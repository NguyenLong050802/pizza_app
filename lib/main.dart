import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'app.dart';
import 'simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // name: 'com.example.pizza_app',
    // options: const FirebaseOptions(
    //   appId: '1:1063780741426:android:efe2f6193723ff6053672b',
    //   apiKey: 'AIzaSyBR_kse1nEcHMep66GeKpke2jR7ljy8VbY',
    //   projectId: 'pizza-app-6e822',
    //   messagingSenderId: '1063780741426',
    // ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
