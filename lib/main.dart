import 'package:flutter/material.dart';
import 'package:greenapp/login.dart';
import 'dart:html';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //GlobalKey _formKey  = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        // padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                'CookApp',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              padding: const EdgeInsets.all(46),
              margin: EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              width: 120,
              height: 110,
            ),
           
            Padding(
              // key: _formKey,
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, Ingresa el nombre de usuario';
                  }
                  return null;
                },
                style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                controller: nameController,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  //  labelText: 'Nombre de Usuario',
                  hintText: "Ingrese su Nombre",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, Ingresa tu contrase??a';
                  }
                  return null;
                },
                style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  //labelText: 'Contrase??a',
                  hintText: "Ingrese su Contrase??a",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Olvidaste tu contrase??a',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Iniciar Sesi??n'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                      // Si el formulario es v??lido, queremos mostrar un Snackbar
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            'Por favor, Ingresa los datos. Hay campos vacios'),
                        backgroundColor: Colors.green,
                        //width: 600,
                        shape: StadiumBorder(),
                        elevation: 560,
                        //   comportamiento: SnackBarBehavior.floating;
                      ));
                    }
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Aun no tienes cuenta?'),
                TextButton(
                    child: const Text(
                      'Registrate',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }),
                      );
                    })
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
