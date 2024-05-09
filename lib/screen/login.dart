import 'package:flutter/material.dart';
import 'package:sumeet/screen/otp.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final _formKey = GlobalKey<FormState>();
final number = TextEditingController();

class _loginState extends State<login> {
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Center(
                       child: Container(
                        height: 400,
                        width: 350,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                        ),
                        child:  
                        Image.asset('images/k31.jpeg')),
                     )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Login to see a little",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        " 'Journey' ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "of us <3",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                  height: 30,
                ),
                  const Text(
                            "Enter the right number to login",
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.w500),
                          ),
                           SizedBox(
                  height: 30,
                ),
                  SizedBox(
                                height: 20,
                                width: 200,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: number,
                                    validator: (value) {
                                    if (value != null && value == '161022') {
                                      showSnackBar(context, 'Right Guess, babe');
                                    return null; 
                                   } 
                                   else {
                                    showSnackBar(context, 'That was a wrong guess :( , you have to try again');
                                    return null;
                        }
                      },
                                    decoration: const InputDecoration(
                                      hintText: "Enter The Number",
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(height: 20),
               ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
          if (number.text == '161022') {
            Future.delayed(Duration(seconds: 5), () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => otp(),
                ),
              );
            });
          } else {
            showSnackBar(context, 'That was a wrong guess :( , you have to try again');
          }
              }
            },
            child: Text('Submit'),
          )
          
          
          
              ],
                ),
                ),
        ),
      ),
            );
  }    
}