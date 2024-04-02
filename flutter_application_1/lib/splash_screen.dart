import 'package:flutter/material.dart';
import 'login_screen.dart'; // Substitua pelo caminho correto para o arquivo de tela de login.

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Após um certo tempo, navegue para a tela de login
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(0, 34, 102, 1), // Cor de fundo azul escuro
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 3, child: SizedBox()), // Ajusta a logo mais para o topo
            Image.asset('assets/logo.png',
                height: 120), // Logo da instituição
            SizedBox(height: 24),
            Text(
              'Saudações,agradecemos por usar nosso aplicativo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Expanded(
                flex: 3,
                child:
                    SizedBox()), // Empurra o texto e a versão para mais perto do centro
            Text(
              'Versão 0.0.1-pre-alpha',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 20), // Espaço antes do fundo da tela
          ],
        ),
      ),
    );
  }
}