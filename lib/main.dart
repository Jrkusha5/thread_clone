import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thread/firebase_options.dart';
import 'package:thread/screens/home.dart';
import 'package:thread/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: StreamBuilder<User?>
      (stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (context,  snapshot){
        if (snapshot.hasData && snapshot.data != null) {
              return const Home();
            } else {
              return const LoginScreen();
            }
      })
      );
        
    
        
}
}