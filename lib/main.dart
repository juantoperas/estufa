import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//void main() => runApp(MyApp());
/*class TextoWidget extends StatefulWidget {
  @override
  _TextoWidgetState createState() => _TextoWidgetState();
}*/
/*String js;
var objeto;
String mostrar = "UNO";

class MyApp extends StatefulWidget {


  Future<String> consultar() async {
    print("Lanza la consulta");
    var respuesta = await http.get('http://192.168.43.57:8008/hello/');
    // sample info available in response
    int statusCode = respuesta.statusCode;
    Map<String, String> headers = respuesta.headers;
    String contentType = headers['content-type'];
    js = respuesta.body;
    print(statusCode.toString() + "\n" + headers.toString() + "\n" +
        js.toString());
    print(respuesta.toString());
    return (js);
  }

  @override
  State<MyApp> createState() {
    print("Crear state");
    return new TareaState();
  }


  MyApp() {
    print("constructor");
    objeto = json.decode(js);
    print(objeto["nombre"].toString());
  }

}

class TareaState extends State<MyApp>{

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to flutter'),
          ),
          body: Column(
            children: [
              Text(mostrar),
              Text(objeto)

            ],
          ),


        )


    );
  }
}*/


void main() => runApp(MyApp());

String js;
var objeto;
String mostrar = "UNO";

class Estufa extends StatefulWidget {

  @override
  EstufaState createState() => EstufaState();

  Future<String> consultar() async {
    print("Lanza la consulta");
    var respuesta = await http.get('http://192.168.43.57:8008/hello/');
    // sample info available in response
    int statusCode = respuesta.statusCode;
    Map<String, String> headers = respuesta.headers;
    String contentType = headers['content-type'];
    js = respuesta.body;
    print(statusCode.toString() + "\n" + headers.toString() + "\n" +
        js.toString());
    print(respuesta.toString());
    return (js);
  }

  Estufa() {
    print("constructor");
    objeto = json.decode(js);
    print(objeto.toString());
    print(objeto["nombre"].toString());
  }
}

class EstufaState extends State<Estufa>{

  @override
  Widget build(BuildContext context) {
    return Material();
  }
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        drawer: Drawer(
            child: ListView(
              children: [
                //1 -------------------------
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey
                  ),
                  child: Text(
                      "HEADER"
                  ),
                ),
                // 2 ------------------------
                FlatButton(
                  onPressed: ()=> print("UNO !"),
                  child: Text("Ventana 1"),
                ),
                // 3 -----------------------
                FlatButton(
                  onPressed: ()=> mostrar = "DOS",
                  child: Text("Ventana 2"),
                )

              ],
            )

        ),

        body: Center(
            child: ListView(
              children: [
                if(mostrar == "UNO")Text('Estufa App'),
                Text(objeto),
                Estufa()
              ],
            )
        ),
      ),
    );
  }
}

