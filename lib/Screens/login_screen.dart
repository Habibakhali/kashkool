
import 'package:flutter/material.dart';
import 'package:kashkool/Style/my_theme.dart';

class LoginScreen extends StatelessWidget {
static const String routeName="LoginScreen";
GlobalKey formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(
            children: [
              Image.asset('assets/images/logo_dark.png'),
              TextFormField(
                cursorColor: MyTheme.blue,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyTheme.bg,
                  label: Text('User Name',style: TextStyle(color: Colors.grey),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                   focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: MyTheme.blue)
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                cursorColor: MyTheme.blue,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: MyTheme.bg,
                    label: Text('Password',style: TextStyle(color: Colors.grey),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: MyTheme.blue)
                    )
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Log in'),
                  style: ElevatedButton.styleFrom(
                    primary: MyTheme.blue
                  )
                  ),
                ),
              SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text('Forgot password?',style: TextStyle(color: Colors.black),)),
              Spacer(),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text('Create new account',style: TextStyle(color: MyTheme.blue),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: MyTheme.blue),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    primary: Colors.transparent,
                    elevation: 0.0
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
