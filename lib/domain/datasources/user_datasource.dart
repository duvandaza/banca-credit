import 'package:banca_credit/domain/entities/user.dart';

abstract class UserDatasource{

  Future<UserClient> getUser(String id);

  Future<UserClient> createUser(UserClient user);
  
}