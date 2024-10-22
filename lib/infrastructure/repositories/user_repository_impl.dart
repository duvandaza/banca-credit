import 'package:banca_credit/domain/datasources/user_datasource.dart';
import 'package:banca_credit/domain/entities/user.dart';
import 'package:banca_credit/domain/repositories/user_repository.dart';


class UserRepositoryImpl extends UserRepository{

  late final UserDatasource userDatasource;

  UserRepositoryImpl(this.userDatasource);

  @override
  Future<UserClient> getUser(String id) {
    return userDatasource.getUser(id);
  }
  
  @override
  Future<UserClient> createUser(UserClient user) {
    return userDatasource.createUser(user);
  }



}