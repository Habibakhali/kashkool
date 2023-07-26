
import 'package:flutter/material.dart';
import 'package:kashkool/Style/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  label: Text(AppLocalizations.of(context)?.user_name??"jjjj",style: TextStyle(color: Colors.grey),),
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
                    label: Text(AppLocalizations.of(context)!.password,style: TextStyle(color: Colors.grey),),
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
                child: ElevatedButton(onPressed: (){}, child: Text(AppLocalizations.of(context)!.log_in),
                  style: ElevatedButton.styleFrom(
                    primary: MyTheme.blue
                  )
                  ),
                ),
              SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text(AppLocalizations.of(context)!.forgot_password,style: TextStyle(color: Colors.black),)),
              Spacer(),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text(AppLocalizations.of(context)!.create_account,style: TextStyle(color: MyTheme.blue),),
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
