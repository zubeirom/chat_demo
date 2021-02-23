import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart' ;
import 'package:chat_demo/model/settings.dart';

class StateModel {
  bool isLoading;
  User firebaseUserAuth;
  AppUser user;
  AppSettings settings;

  StateModel({
    this.isLoading = false,
    this.firebaseUserAuth,
    this.user,
    this.settings,
  });
}