import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  final Map<String, dynamic> student;

  StudentProfileScreen({required this.student});

  Widget _buildInfoTile(IconData icon, String info) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF1565C0)),
        title: Text(info, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 26, 255),
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)),
        elevation: 0,
        title: Text('Perfil do Aluno', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(student['avatar']), // Substitua com a imagem do aluno
            ),
            SizedBox(height: 24),
            _buildInfoTile(Icons.person, student['name'] ?? 'Nome não fornecido'),
            _buildInfoTile(Icons.document_scanner, student['cpf'] ?? '000.000.000-00'),
            _buildInfoTile(Icons.phone, student['phone'] ?? '(00) 00000-0000'),
            _buildInfoTile(Icons.school, 'Turma: ' + (student['grade'] ?? 'Não informado')),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}