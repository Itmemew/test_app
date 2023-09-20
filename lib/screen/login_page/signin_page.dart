import 'package:car_trading_app/provider/provider_first_page.dart';
import 'package:car_trading_app/screen/home_page/first_home_page.dart';
import 'package:car_trading_app/screen/register_page/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key,});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final keyForm = GlobalKey<FormState>();
  final cUsername = TextEditingController();
  final cPassword = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2
                ),
                Image.asset('assets/images/car3.png'),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1
                ),
                Form(
                  key: keyForm,
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
                          controller: cUsername,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*กรุณากรอก";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person_2_outlined,
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),
                        TextFormField(
                          controller: cPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*กรุณากรอก";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.lock_outline,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                            onTap: () {
                              if (keyForm.currentState!.validate()) {
                                keyForm.currentState!.save();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeNotifierProvider<ProviderFirstPage>(
                                    create: (BuildContext context) => ProviderFirstPage(),
                                child: FirstHomePage(),
                                )));
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
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
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
                                  TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
