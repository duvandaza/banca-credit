import 'package:formz/formz.dart';

// Define input validation errors
enum CedulaError { empty, value, format, mayor }

// Extend FormzInput and provide the input type and error type.
class Cedula extends FormzInput<String, CedulaError> {
  // Call super.pure to represent an unmodified form input.
  const Cedula.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Cedula.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == CedulaError.empty) return 'El campo es requerido';
    if (displayError == CedulaError.value) return 'Tiene que ser un número como mínimo de 5 dígitos';
    if (displayError == CedulaError.mayor) return 'Tiene que ser un número con menos de 10 dígitos';
    if (displayError == CedulaError.format) return 'No tiene formato de número';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  CedulaError? validator(String value) {
    if (value.toString().isEmpty || value.toString().trim().isEmpty) return CedulaError.empty;

    final isInteger = int.tryParse(value.toString()) ?? -1;
    if (isInteger == -1) return CedulaError.format;

    if (isInteger < 10000 ) return CedulaError.value;
    if (isInteger > 9999999999 ) return CedulaError.mayor;

    return null;
  }
}