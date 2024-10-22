
import 'package:banca_credit/domain/entities/user.dart';

abstract class UserRepository{

  Future<UserClient> getUser(String id);
  Future<UserClient> createUser(UserClient user);
  
}