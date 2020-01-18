import 'package:flutter/material.dart';
import 'package:its/home.dart';
import 'package:shared_preferences/shared_preferences.dart';




addStringToSF(key,value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}
class User {
  final String firstName;
  final String lastName;
  

  User(this.firstName,this.lastName);
 
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  
  @override

  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: ListView(
                      children: <Widget>[
        Stack(
          children: <Widget>[
              Center(
                child: new Image.asset(
                  'assets/bg.jpeg',
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30 , bottom: 30, left: 20, right: 20),
                child: Center(
                  child: Container(
                    width: size.width,
                    height: size.height,
                    color: green,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Ekspor\nSimulator",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 100, right: 20, left: 20),
                          child: Container(
                            width: size.width,
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Selamat Datang",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, right: 20),
                                  child: TextField(
                                    controller: firstNameController,
                                    style: new TextStyle(
                                      height: 0.2
                                    ),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Nama Depan'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 20, right: 20),
                                  child: TextField(
                                    controller: lastNameController,
                                    style: new TextStyle(
                                      height: 0.2
                                    ),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Nama Belakang'),
                                  ),
                                  
                                ),
                                Text("Mari Menjadi Eksportir"),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,bottom: 30),
                                  child: ButtonTheme(
                                      buttonColor: green,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.white)),
                                        child: Text(
                                          "Masukan",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                        onPressed: () {
                                          _navigateHome(context);
                                        },
                                      )),
                                )
                              ],
                            ),
                          ),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text("Dibuat Oleh :\nNatan,Sausan,Tresno,Afif",textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
          )),
    );
  }
  _navigateHome(BuildContext context) async {
    User user = new User(firstNameController.text, lastNameController.text);
    addStringToSF('firstName', firstNameController.text);
    addStringToSF('lastName', lastNameController.text);
    print("ini log : user" + firstNameController.text);
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Home(
                  users: user,
                )));
    print(result);
  }
}


