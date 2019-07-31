import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var emailEditingController;
        return Scaffold(
          appBar: AppBar(
              // actions: <Widget>[
              //   IconButton(
              //     icon: Icon(Icons.arrow_back_ios),
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //   )
              // ],
              ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text(
                    'TeamUp',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    height: 10,
                  ),
                Center(
                  child: Text(
                    'Please fill in all details',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
    
                SizedBox(
                  height: 100,
                ),
                TextField(
                  autofocus: false,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  controller: emailEditingController,
              decoration: InputDecoration(
                labelText: "Email address",
                hintText: "Email address",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.purple,
                    style: BorderStyle.solid
                  )
                )
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              child: MaterialButton(onPressed: () => {},
              textColor: Colors.white,
              color: Colors.green,
              height: 50,
              child: Text("LOGIN"),
            )
            )],
        ),
      ),
    );
  }
}
