import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/translations/locale_keys.g.dart';
import 'package:localization/class/user.dart'; 
import 'main_page.dart'; 

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.registration_page_title.tr(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey, 
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.name_label.tr(),
                    labelStyle: TextStyle(color: Colors.blue), 
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), 
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.email_label.tr(),
                    labelStyle: TextStyle(color: Colors.blue), 
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), 
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.password_label.tr(),
                    labelStyle: TextStyle(color: Colors.blue), 
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), 
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Подтвердите пароль",
                    labelStyle: TextStyle(color: Colors.blue), 
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), 
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    String name = nameController.text;
                    String email = emailController.text;
                    String password = passwordController.text;
                    String confirmPassword = confirmPasswordController.text;

                    if (password == confirmPassword) {
                      User user = User(
                          name: name, email: email, password: password);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(
                            name: user.name,
                            email: user.email,
                            password: user.password,
                          ),
                        ),
                      );
                    } else {
                      
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Ошибка"),
                            content: Text("Пароли не совпадают."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, 
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.register_button_label.tr(),
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

