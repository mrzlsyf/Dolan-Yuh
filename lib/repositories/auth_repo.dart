import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;
  Future<void> login({required String email, required String password}) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      throw e.message ?? 'Ada yang Salah!';
    } catch (e) {
      throw e;
    }
  }

  Future<void> register(
      {required String email, required String password}) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      throw e.message ?? 'Ada yang Salah!';
    } catch (e) {
      throw e;
    }
  }
}
