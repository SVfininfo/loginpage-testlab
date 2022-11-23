
import 'package:flutter/material.dart';
import 'package:login_page/third_screen.dart';

import 'login_page.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: true,
        child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(backgroundColor: Colors.deepOrange,
          title: Center(child: Text("ePOS Home",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
        ),
        body:  Center(
            child: Column(
                children: [
                  Image.asset('assets/images/epos.jpg',height: 300,width: 600,),
                  SizedBox(height: 20,),
                  const Text("You are in ePOS now",
                    style: TextStyle(fontSize: 23,color: Colors.deepOrange,fontWeight: FontWeight.bold
                    ),),

                  SizedBox(height: 20,),

                  InkWell(
                    key: Key("back to epos login"),
                    onTap: (){
                      // if (_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const ThirdScreen()));
                      // }else{
                      //   return null;
                      // }
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10),),
                      child:Center(child:Text("back",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ,),
                    ),
                  ),
                  SizedBox(height: 20,),

                  InkWell(
                    key: Key("home"),
                    onTap: (){
                      // if (_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                      // }else{
                      //   return null;
                      // }
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),),
                      child:Center(child:Text("home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ,),
                    ),
                  ),
                ]))
        ));
  }
}
