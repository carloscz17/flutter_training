import 'package:flutter/material.dart';
import 'package:flutter_application_1/student_list_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Image.asset('assets/faculdade_catolica_logo.png',
                  height: 120), // Logo da faculdade
              SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  style: TextStyle(color: Colors.white), // Altera a cor do texto
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.blue),
                    hintText: 'Digite seu e-mail',
                    hintStyle: TextStyle(color: Colors.grey), // Altera a cor do texto de dica
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Altera a cor da borda do TextField
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.blue),
                    hintText: 'Digite sua senha',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off, color: const Color.fromARGB(255, 230, 225, 225)),
                  ),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentListScreen()));
                },
                child: Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
