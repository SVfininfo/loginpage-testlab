
import 'package:flutter/material.dart';
import 'package:login_page/third_screen.dart';

import 'login_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
      child:Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(backgroundColor: Colors.green,
        title: Center(child: Text("Fin Home",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
    ),
    body: Center(
    child: Column(
    children: [
      SizedBox(height: 40,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/fin.png',height: 200,width: 400,),
          SizedBox(width:4,),
          const Text("FIN Welcomes you to ePOS",
            style: TextStyle(fontSize: 23,color: Colors.deepOrange,fontWeight: FontWeight.bold
            ),),
          Image.asset('assets/images/epos.jpg',height: 200,width: 400,),
        ],
      ),



      SizedBox(height: 20,),

      InkWell(
        key: Key("loginepos"),
        onTap: (){
          // if (_formKey.currentState!.validate()){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const ThirdScreen()));
          // }else{
          //   return null;
          // }
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(10),),
          child:Center(child:Text("Login ePOS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ,),
        ),
      ),
      SizedBox(height: 20,),

      InkWell(
        key: const Key("back to finlogin"),
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
          child:Center(child:Text("back",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ,),
        ),
      ),
    ]))
    ));
  }
}
