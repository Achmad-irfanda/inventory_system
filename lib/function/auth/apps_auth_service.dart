// apps register function
import 'package:inventory_system/apps_common_libs.dart';

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // register user
  static Future<UserModel> registerUser(
      {required String email, required String password}) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return UserModel(user: result.user, message: '');
    } catch (e) {
      return UserModel(user: null , message: e.toString());
    }
  }

  // login user
  static Future<UserModel> loginUser(
      {required String email, required String pass}) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: AppsPublicVariableResource.email,
          password: AppsPublicVariableResource.password);
      return UserModel(user: result.user, message: '');
    } catch (e) {
      return UserModel(user: null, message: e.toString());
    }
  }

  // logout
  static void logOutUser() {
    _firebaseAuth.signOut();
  }
}
