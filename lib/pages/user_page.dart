import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String email;
  final String password;

  UserPage({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Информация о пользователе',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue, // Changed background color
          borderRadius: BorderRadius.circular(0.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: $name',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 246, 246),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 185, 0, 161),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: $email',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 240, 240),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(0, 180, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Password: $password',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 239, 239),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 116, 0, 139),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
