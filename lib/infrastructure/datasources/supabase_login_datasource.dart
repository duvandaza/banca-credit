import 'package:banca_credit/domain/datasources/login_datasource.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseLoginDatasource extends LoginDatasource {
  
  @override
  Future<String> login(String email, String pass) async {
    try {
      final AuthResponse response = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: pass,
      );
      final Session? session = response.session;
      return session!.accessToken;
    } catch (e) {
      return '';
    }
  }

  @override
  Future<bool> logout() async{
    try {
      await Supabase.instance.client.auth.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }

}