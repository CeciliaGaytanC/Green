import 'dart:html';

import 'package:flutter/material.dart';

import 'main.dart';


void main() {
  runApp(const MyApp());
}
class LoginPage extends StatefulWidget {
@override
_LoginPageState  createState() => _LoginPageState();
}


  class _LoginPageState extends State<LoginPage> {
 @override
 Widget build(BuildContext context){
return  Scaffold (
  body:Stack(
    children: [
      Fondo(),
      Contenido()
    ],
  )

);
}
}










class Contenido  extends StatefulWidget {
@override
_ContenidoState  createState() => _ContenidoState();
}


  class _ContenidoState extends State<LoginPage> {
 @override
 Widget build(BuildContext context){
return  Padding(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Inicio",
        style: TextStyle(
          color: Colors.white,
          fontWeight:  FontWeight.bold,
          fontSize: 30,
        )
      ),
      SizedBox(
        height:  5,
      ),
      Text(
        "Bienbenido a Green",
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          letterSpacing: 1.5,
        ),
      ),
      SizedBox(
        height:  5,
      ),
      Datos(),
    ],
  ),
);
}
}

class  Datos extends StatefulWidget {
  @override
  _DatosState createState () => _DatosState();
}


class _DatosState extends State<Datos> {
bool obs =true;
  @override
  Widget build (BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style:  TextStyle(
              color:  Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),   
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border:  OutlineInputBorder(),
              hintText:  "email@gmail.com",
            ),),
          SizedBox(
            height: 5,
          ),
          Text(
            "Pasword",
            style: TextStyle(
              color: Colors.black,
              fontWeight:  FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText:  obs,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password",
              suffixIcon:  IconButton(
                icon:  Icon (Icons.remove_red_eye_outlined),
                onPressed: () {
                setState ((){
                obs == true ? obs =true : obs = false;
                });
                }
              )
            ),
          ),
          Remember(),
          SizedBox(),
          Botones(),

        ],
      ),
decoration:  BoxDecoration(
  borderRadius:  BorderRadius.circular(10),
color: Colors.white,
    ),
    );
}
}


class  Remember extends StatefulWidget {
  @override
  _RememberState createState () => _RememberState();
}


class _RememberState extends State<Remember> {
  @override
  Widget build (BuildContext context) {
    return Container(
    );
   }
   } 

class Botones extends StatelessWidget{
  @override
  Widget build(BuildContext  context){
  return Column (
children: [
  Container(
    width: double.infinity,
    height: 50,
    child:  ElevatedButton (
      onPressed: () {},
      child: Text(
        "Login",
        style:  TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1420247))),
    ),
  ),
  SizedBox(),
  Text(
    "Hola"
  ),
  SizedBox(),
  Container(),
  SizedBox(),
  Container(),
],
  );
}
}

class Fondo extends StatelessWidget{
  @override
  Widget build(BuildContext  context){
  return Container (

  );
}
}







