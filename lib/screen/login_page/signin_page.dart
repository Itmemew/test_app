import 'package:car_trading_app/screen/home_page/first_home_page.dart';
import 'package:car_trading_app/screen/register_page/new_account_page.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final keyForm = GlobalKey<FormState>();
  final cUsername = TextEditingController();
  final cPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Form(
          key: keyForm,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image.asset('assets/images/caricon')
                SizedBox(
                  height: 250,
                ),
                Center(
                  child: Text(
                    'Sign In'
                  )
                ),
                SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: cPassword,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )
                          ),
                        ),
                        TextFormField(
                          controller: cUsername,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              if(keyForm.currentState!.validate()){
                                keyForm.currentState!.save();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FirstHomePage()));
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.blue.shade800),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Dont have Account? ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(text: 'Sign Up',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
