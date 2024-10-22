
import 'package:banca_credit/domain/datasources/login_datasource.dart';
import 'package:banca_credit/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository{

  late final LoginDatasource loginDatasource;

  LoginRepositoryImpl(this.loginDatasource);

  @override
  Future<String> login(String email, String pass) {
    return loginDatasource.login(email, pass);
  }

  @override
  Future<bool> logout() {
    return loginDatasource.logout();
  }

}