import 'package:banca_credit/domain/datasources/user_datasource.dart';
import 'package:banca_credit/domain/entities/user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class SupabaseUserDataSource extends UserDatasource {
  
  final supa = Supabase.instance.client;

  @override
  Future<UserClient> getUser(String id) async {
    
    final response = await supa
      .from('user')
      .select()
      .eq('id', id)
      .single();
    
    final UserClient user = UserClient.fromJson(response);
    return user;
  }
  
  @override
  Future<UserClient> createUser(UserClient user) async {
  //   final response = await supa
  //     .from('user')
  //     .insert({
  //       'name': user.name,
  //       'email': user.email,
  //       'password': user.password,
  //       'cedula': user.cedula,
  //   });
  //   if
  // TODO: implement createUser
    throw UnimplementedError();
  }
}