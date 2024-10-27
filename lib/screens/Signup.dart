import 'package:flutter/material.dart';
import 'package:thread/screens/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
  final emailController=TextEditingController();
   final passwordController=TextEditingController();
  final nameController=TextEditingController();
 final usernameController=TextEditingController();

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
             Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Enter Your full name",
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
                controller: usernameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Enter Your username",
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
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(onPressed: (){},
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                 child: const Text('Sign up',
                 style: TextStyle(
                  color: Colors.white
                 ),),
              
                  ),
              ),
            ),
           
           const Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Already have An Account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                     (context)=>const LoginScreen()),);
                  },
                child: const Text("Login",
                 style: TextStyle(fontWeight: FontWeight.bold,
                 color: Colors.black),
                 ) ,)
              ],
            )
          ],
        ),
      )),

    );
  }
}