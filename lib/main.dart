//importa la librería Material Design de Flutter.
import 'package:flutter/material.dart';

// El punto de entrada de la aplicación.
void main() {
  // Ejecuta la aplicación, que es una instancia de la clase HojaDeVida.
  // void main Es el punto de entrada de la aplicación, Aquí empieza a ejecutarse el programa.
  //runApp Le dice a Flutter cuál widget será la raíz de la app.
  //const HojaDeVida Crea una instancia del widget principal.Se usa const porque el widget es inmutable
  //(buena práctica y mejora rendimiento).
  runApp(const HojaDeVida());
}

//Se define una clase llamada HojaDeVida
//Extiende de StatelessWidget, lo que significa:
//Es un widget que no cambia su estado dinámicamente.
class HojaDeVida extends StatelessWidget {
  //Constructor del widget.const optimiza rendimiento.
  //super.key permite identificar el widget dentro del árbol de widgets.
  const HojaDeVida({super.key});

  //@override, Indica que estamos sobrescribiendo un método del padre (StatelessWidget).
  @override
  //build(), Es el método más importante. Aquí se construye toda la interfaz visual.
  //BuildContext context, Contiene información sobre la posición del widget en el árbol.
  Widget build(BuildContext context) {
    //return MaterialApp(, Es el contenedor principal de la aplicación.Maneja:
    //Tema, Navegación, Diseño general
    return MaterialApp(
      //debugShowCheckedModeBanner: false, Quita la etiqueta roja de “DEBUG” en la esquina.
      debugShowCheckedModeBanner: false, // Quita el banner debug
      //theme: ThemeData( primarySwatch: Colors.purple), Define el color principal de la app.
      theme: ThemeData(primarySwatch: Colors.purple),
      //home: Scaffold( Scaffold es la estructura base de una pantalla. Incluye:AppBar
      //Body, Floating buttons, Drawer
      home: Scaffold(
        //appBar: AppBar(title: Text("Hoja de Vida - Angie Carrillo"), centerTitle: true,)
        //AppBar, Barra superior. title  Texto del título. centerTitle: true → Centra el título.
        appBar: AppBar(
          title: Text("Hoja de Vida - Angie Carrillo"),
          centerTitle: true,
        ),
        //body: ListView(ListView permite hacer scroll vertical. Ideal cuando el contenido puede ser largo.
        body: ListView(
          //padding: EdgeInsets.all(20), Agrega espacio interno alrededor del contenido.
          padding: EdgeInsets.all(20),
          children: [
            Center(
              //Container(width: 140, height: 140, Crea una caja de tamaño fijo.
              child: Container(
                width: 140,
                height: 140,
                //decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purple.shade50),
                //BoxDecoration → decoración visual. shape: circle → forma circular. color → fondo suave morado.
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade50,
                ),
                //ClipOval(, Recorta su hijo en forma ovalada (en este caso, circular).
                child: ClipOval(
                  //Image.asset("assets/images/FOTO.jpg",fit: BoxFit.contain,),
                  //Image.asset, carga imagen local.Ruta → debe coincidir exactamente.BoxFit.contain
                  // ajusta imagen sin cortarla.
                  child: Image.asset(
                    "assets/images/FOTO.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            //SizedBox(height: 20), Crea espacio vertical entre widgets.
            SizedBox(height: 20),
            Text(
              "Angie Carrillo",
              //style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),
              //Estilo del texto: Tamaño 24, Negrita
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text("Desarrolladora en formación", textAlign: TextAlign.center),
            SizedBox(height: 30),

            Text(
              "Información Personal:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // SizedBox(, Sirve para dar espacio o definir un tamaño fijo. Aquí se usa para separar secciones.
            SizedBox(height: 15),

            //listtile sirve para crear filas con un diseño predefinido. Aquí se usa para mostrar información 
            //personal con íconos.
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.purple),
              title: Text("Bogotá, Colombia"),
            ),

            ListTile(
              leading: Icon(Icons.phone, color: Colors.purple),
              title: Text("+57 3245954429"),
            ),

            ListTile(
              leading: Icon(Icons.email, color: Colors.purple),
              title: Text("1angiecarrillo12340300@gmail.com"),
            ),

            ListTile(
              leading: Icon(Icons.cake, color: Colors.purple),
              title: Text("21 años"),
            ),

            SizedBox(height: 30),
            Text(
              "Skills como Programadora",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            //sirve para dar espacio o definir un tamaño fijo.
            SizedBox(height: 15),

            //ListTile(leading: Icon(Icons.code),title: Text("Flutter"),
            //ListTile crea una fila con:leading icono izquierdo, title  texto principal
            //Repites esto para cada habilidad.
            ListTile(leading: Icon(Icons.code), title: Text("Flutter")),
            ListTile(leading: Icon(Icons.storage), title: Text("SQL & MySQL")),
            ListTile(leading: Icon(Icons.web), title: Text("HTML & CSS")),
            ListTile(
              leading: Icon(Icons.computer),
              title: Text("Soporte Técnico Básico"),
            ),
            ListTile(
              leading: Icon(Icons.smartphone),
              title: Text("Desarrollo Mobile"),
            ),
          ],
        ),
      ),
    );
  }
}
