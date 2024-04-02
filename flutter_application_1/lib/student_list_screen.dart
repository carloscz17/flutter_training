import 'package:flutter_application_1/professional_profile_screen.dart';
import 'package:flutter/material.dart';
import 'student_profile_screen.dart'; // Certifique-se de que este import reflita o caminho correto para o arquivo.

class StudentListScreen extends StatelessWidget {
  // Mock data para a lista de alunos
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Carlos César',
      'grade': 'P1',
      'avatar': 'assets/carloscesar.png'
    },
    {
      'name': 'João Bezerra',
      'grade': 'P1',
      'avatar': 'assets/av2.png'
    },
    {
      'name': 'Iasmin Levina',
      'grade': 'P1'
     ,'avatar': 'assets/av3.png'
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Alunos', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.blue),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfessionalProfileScreen()));
              // Implementar ação de navegação para o perfil do usuário
            },
          )
        ],
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: ListView.separated(
        itemCount: students.length,
        separatorBuilder: (context, index) =>
            Divider(color: Colors.grey.shade300),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(students[index]['avatar']),
            ),
            title: Text(
              students[index]['name'],
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text(
              students[index]['grade'],
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Implementar navegação para o perfil do aluno
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StudentProfileScreen(student: students[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
