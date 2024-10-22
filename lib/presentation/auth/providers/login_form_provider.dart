
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import '../../../common/inputs/input.dart';

class LoginFormProvider extends ChangeNotifier {

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
      Email.dirty(email.value),
      Password.dirty(password.value)
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