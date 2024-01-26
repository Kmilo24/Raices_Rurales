import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBlueRoundedRectangle(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyBlueRoundedRectangle extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: screenWidth * 0.25,
            child: Image.asset(
              '../assets/images/logo.png',
              width: screenWidth * 0.5,
              height: screenHeight * 0.2,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              decoration: BoxDecoration(
                color: Color(0xFF3B6D7C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // Cambiado a CrossAxisAlignment.start
                  children: [
                    Text(
                      'Bienvenido', // Texto que quieres agregar
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'a Raices Rurales',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          width: screenWidth * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Correo',
                              labelStyle: TextStyle(color: Color(0xFF3B6D7C)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 16.0, height: 1.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          width: screenWidth * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              labelStyle: TextStyle(color: Color(0xFF3B6D7C)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: 16.0, height: 1.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para el botón "Entrar"
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            minimumSize: Size(150, 40),
                          ),
                          child: Text('Entrar'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para el botón "Registrar"
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            minimumSize: Size(150, 40),
                          ),
                          child: Text('Registrar'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Lógica para el nuevo TextButton
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white70,
                          textStyle: TextStyle(fontSize: 16),
                        ),
                        child: Text('Olvidaste tu contraseña?'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
