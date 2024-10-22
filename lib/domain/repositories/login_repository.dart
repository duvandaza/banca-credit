

abstract class LoginRepository{

  Future<String> login(String email, String pass);

  Future<bool> logout();
}