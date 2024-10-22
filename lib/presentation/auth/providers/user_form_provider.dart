import 'package:banca_credit/common/inputs/input.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

class UserFormProvider extends ChangeNotifier {

  Name _name = const Name.dirty('');
  Cedula _id = const Cedula.dirty('');
  Email _email = const Email.dirty('');
  Password _password = const Password.dirty('');
  bool _isFormValid = false;
  bool _isPosting = false;

  Future<bool> formSubmit() async {
    await _touchedForm();
    return isFormValid;
  }

  Future<void> _touchedForm() async {
    isPosting = true;
    isFormValid = Formz.validate([
      Name.dirty(name.value),
      Cedula.dirty(id.value),
      Email.dirty(email.value),
      Password.dirty(password.value)
    ]);
  }
  
  void onNameChange(String value){
    name = Name.dirty(value);
    isFormValid = Formz.validate([
      Name.dirty(value),
    ]);
  }

  void onIdChange(String value){
    id = Cedula.dirty(value);
    isFormValid = Formz.validate([
      Cedula.dirty(value),
    ]);
  }

  void onEmailChange(String value){
    email = Email.dirty(value);
    isFormValid = Formz.validate([
      Email.dirty(value),
    ]);
  }

  void onPasswordChange(String value){
    password = Password.dirty(value);
    isFormValid = Formz.validate([
      Password.dirty(value),
    ]);
  }


  Name get name => _name;
  set name(Name data){
    _name = data;
    notifyListeners();
  }

  Cedula get id => _id;
  set id(Cedula data){
    _id = data;
    notifyListeners();
  }

  Email get email => _email;
  set email(Email data){
    _email = data;
    notifyListeners();
  }

  Password get password => _password;
  set password(Password data){
    _password = data;
    notifyListeners();
  }
  
  bool get isFormValid => _isFormValid;
  set isFormValid(bool value) {
    _isFormValid = value;
    notifyListeners();
  }

  bool get isPosting => _isPosting;
  set isPosting(bool value) {
    _isPosting = value;
    notifyListeners();
  }
}