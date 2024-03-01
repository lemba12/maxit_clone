import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:header/OrangeMoney.dart';

import 'menu.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

    void connecter() {
      if (phoneController.text.length == 8) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage(phoneNumber: phoneController.text)),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Erreur"),
              content: const Text("Veuillez saisir un numéro de téléphone valide."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/z.jpeg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Authentification',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Colors.orange),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Tapez votre numéro (sans indicatif)',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        '*',
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 8,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        hintText: 'Numéro de téléphone',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: connecter,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text('Se connecter'),
                    ),
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

void main() {
  runApp(MaterialApp(
    home: ConnexionPage(),
  ));
}
