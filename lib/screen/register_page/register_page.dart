import 'package:car_trading_app/provider/provider_first_page.dart';
import 'package:car_trading_app/screen/home_page/first_home_page.dart';
import 'package:car_trading_app/screen/login_page/login_page.dart';
import 'package:car_trading_app/screen/login_page/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final keyForm = GlobalKey<FormState>();
  final cFirstName = TextEditingController();
  final cLastName = TextEditingController();
  final cEmail = TextEditingController();
  final cPassWord = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8241f2),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Back'),
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        child: Form(
          key: keyForm,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1
                  ),
                  Image.asset('assets/images/car3.png'),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1
                  ),
                  Container(
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
                        SizedBox(height: 5,),
                        TextFormField(
                          controller: cFirstName,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person_2_outlined,
                              ),
                              hintText: 'First Name',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextFormField(
                          controller: cLastName,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person_2_outlined,
                              ),
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextFormField(
                          controller: cEmail,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.mail_outline,
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextFormField(
                          controller: cPassWord,
                          validator: (value){
                            if (value!.isEmpty){
                              return "*กรุณากรอก";
                            }else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.lock_outline_rounded,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                            onTap: () {
                              if(keyForm.currentState!.validate()){
                                keyForm.currentState!.save();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginPage()));
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.blue.shade800),
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'an Account? ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(text: 'Sign In',
                                      style: TextStyle(
                                          color: Colors.blue.shade800,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
