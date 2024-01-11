import 'package:flutter/material.dart';
import 'package:aplokasi_uas/main.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Info Developer"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("assets/profil.jpg"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "La Ode Rafif Setiawan   ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Text("152021117"),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Panggil fungsi untuk kembali ke LoginPage
                  goBackToLoginPage(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.exit_to_app,
                      size: 24,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Exit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk kembali ke LoginPage
  void goBackToLoginPage(BuildContext context) {
    // Navigasi kembali ke LoginPage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
