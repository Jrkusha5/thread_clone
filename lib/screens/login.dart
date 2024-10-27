import 'package:flutter/material.dart';
import 'package:thread/screens/Signup.dart';
import 'package:thread/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
   final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Image.asset('assets/thread_logo.png',
              width: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )
                  )
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Enter Your password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){},
                 child:const Text('Forgot Password',
                 style: TextStyle(
                  color: Colors.black
                 ),)),
                 
              ],
            ),
             SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context)=>const Home()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text("Login",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
          //  const Divider(),
           const Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Don't have An Account yet?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                     (context)=>const SignupScreen()),);
                  },
                child: const Text("Sign Up",
                 style: TextStyle(fontWeight: FontWeight.bold,
                 color: Colors.black,
                 fontSize: 16),
                 ) ,)
              ],
            )
          ],
        ),
      )),

    );
  }
}