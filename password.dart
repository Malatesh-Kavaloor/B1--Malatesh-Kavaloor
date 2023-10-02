import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_login/main.dart';


class pass extends StatelessWidget {
  pass({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bckgrnd.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 465, top: 35),
                child: Column(children: [
                  Text('Reset password',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),

                ])),
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 400,
                    left: 400),
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                            hintText: 'Email',

                            prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Enter valid Email ID";
                          } else {
                            return null;
                          }
                        },
                      ),


                      SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                        onPressed: () {
                        }
                        ,
                        child: Text("Reset Password",style: TextStyle(color: Colors.black),),),




                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
