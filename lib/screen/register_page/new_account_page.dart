import 'package:car_trading_app/screen/login_page/loginPage.dart';
import 'package:flutter/material.dart';

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

  // bool checkboxValue1 = true;

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
                        'Register'
                    )
                ),
                SizedBox(
                  height: 50,
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
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        // CheckboxListTile(
                        //   shape: const CircleBorder(),
                        //   controlAffinity: ListTileControlAffinity.leading,
                        //   value: checkboxValue1,
                        //   onChanged: (bool? value) {
                        //     setState(() {
                        //       checkboxValue1 = value!;
                        //     });
                        //   },
                        //   title:  Text('Allow '),
                        // ),
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
                        InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.blueGrey.shade100),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blue.shade800,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Sign Up with facebook',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ],
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
