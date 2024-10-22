
abstract class LoginDatasource{

  Future<String> login(String email, String pass);

  Future<bool> logout();
}