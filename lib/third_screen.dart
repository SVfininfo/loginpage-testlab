import 'package:flutter/material.dart';
import 'package:login_page/welcome_screen.dart';

import 'forth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Center(
                child: Text(
              "ePOS Login",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
          body: Center(
            child: Column(children: [
              Image.asset(
                'assets/images/epos.jpg',
                height: 250,
                width: 200,
              ),
              const Text(
                "Login to ePOS here",
                style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        key: Key("value"),
                        keyboardType: TextInputType.emailAddress,
                        controller: email,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter Your Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (RegExp(emailRegex).hasMatch(value!)) {
                          } else if (value == null || value.isEmpty) {
                            return "Email is required";
                          } else {
                            return "Enter correct email ";
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Your Password",
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            } else if (value.length < 6) {
                              return "Must be 6 characters";
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      key: const Key("epos login"),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ForthScreen()));
                        } else {
                          return null;
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      key: const Key("back2 fin home"),
                      onTap: () {
                        // if (_formKey.currentState!.validate()){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WelcomeScreen()));
                        // }else{
                        //   return null;
                        // }
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "back",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ]),
          ),
        ));
  }
}
