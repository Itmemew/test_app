import 'package:car_trading_app/screen/login_page/signin_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.asset('assets/images/caricon')
              SizedBox(
                height: 250,
              ),
              Center(
                child: Icon(
                  Icons.ac_unit,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 290,
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
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SigninPage(
                                    callBackUser: (val) {
                                      print(">>>>>  $val");
                                    },
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.blueGrey.shade100),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.blue.shade800),
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
