import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tutorial/components/my_button.dart';
import 'package:tutorial/components/my_textfield.dart';
import 'package:tutorial/components/square_title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),

                //welcome back, you've better
                Text(
                  "Welcome back to you've been missed! ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),

                //forgot password text
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          )
                        ])),
                const SizedBox(height: 25),
                //sign in Button

                Mybutton(
                  onTap: signUserIn,
                ),
                const SizedBox(height: 50),

                // divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with ',
                        style: TextStyle(color: Colors.grey[700]),
                        ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ]),
                ),

                // google + apple sign in buttons

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google but
                    SquareTitle(imagePath: 'images/google.jpg' ),
                    const SizedBox(width: 10),
                  // apple sign
                  SquareTitle(imagePath: 'images/app.png' )


                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                      
                    ), 
                    const SizedBox(width: 10,),

                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
