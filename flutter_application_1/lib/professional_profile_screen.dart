import 'package:flutter/material.dart';

class ProfessionalProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://cdn.discordapp.com/attachments/959600107261681746/1224794010405572791/image.png?ex=661ec94f&is=660c544f&hm=f4be472be94db4c8534ac5f791c3389b8d720f0e73b986d202e373d520b0237d&'), // Substituir pela URL da imagem
            ),
            SizedBox(height: 16),
            Text('Renê Nóbrega', style: TextStyle(fontSize: 24)),
            Text('Coordenador', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('83 99909-9409'),
            Text('000.000.000-00'),
          ],
        ),
      ),
    );
  }
}
