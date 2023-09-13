import 'package:flutter/material.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({super.key});

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Select Cars',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notification_add_outlined,
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.menu_outlined
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
