import 'package:flutter/material.dart';
import 'OrangeMoney.dart'; // Import de la page OrangeMoney.dart

class MenuPage extends StatelessWidget {
  final String phoneNumber;

  const MenuPage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Text(
              phoneNumber,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black,
              size: 32,
            ),
          ],
        ),
        actions: [
          Icon(Icons.person, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.person, color: Colors.orange),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Bonjour LEMBA Bénédicte',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 4),
                    Wrap(
                      spacing: 8,
                      children: [
                        _buildImageWithText(
                          'assets/images/flutte.png',
                          'Max it',
                          () {
                            // Ajoutez ici la navigation vers la page correspondante
                          },
                        ),
                        _buildImageWithText(
                          'assets/images/image2.jpg',
                          'Internet',
                          () {
                            // Ajoutez ici la navigation vers la page correspondante
                          },
                        ),
                        _buildImageWithText(
                          'assets/images/flutte1.png',
                          'TV d\'Orange',
                          () {
                            // Ajoutez ici la navigation vers la page correspondante
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 1),
              Icon(
                Icons.waving_hand,
                color: Colors.yellow,
                size: 32,
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20),
                Card(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/TT.jpg',
                                      width: 32, 
                                      height:32,
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Solde principal',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Credit Principal',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '19CFA',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 4),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Mes transactions Orange Money',
                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Voir plus',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mes favoris',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'Personnaliser',
                            style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/un.jpeg',
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.contain,
                              ),
                              Text('Facturiers')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Icon(
                                Icons.qr_code,
                                color: Colors.black,
                                size: 200,
                              ),
                              Text('codes QR')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/deux.jpeg',
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.contain,
                              ),
                              Text('Transférer de l\'argent')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/trois.jpeg',
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.contain,
                              ),
                              Text('Achat de crédit et bundles')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'J\'en profite',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/flutte2.png',
                                width: double.infinity,
                                height: 48,
                                fit: BoxFit.contain,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Roue de la fortune',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Text(
                                        '    Tenter ma chance!',
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.orange,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/flutte0.jpeg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                              Text(
                                'Tout sur la CAN',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9, 
                                child: Image.asset(
                                  'assets/images/deux.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Orange Money',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          ' Transférer de l\'argent!',
                                          style: TextStyle(color: Colors.orange),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image.asset(
                                  'assets/images/trois.jpeg',
                                  width: double.infinity,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Forfait Internet',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          '   Forfait Internet!',
                                          style: TextStyle(color: Colors.orange),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/TT.jpg', width: 24, height: 24),
            label: 'Orange Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sim_card, color: Colors.black, size: 24),
            label: 'Ma Ligne',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code, color: Colors.black),
            label: 'Codes QR',
          ),
        ],
        selectedItemColor: Colors.orange,
        onTap: (int index) {
          switch (index) {
            case 0:
              // Navigation vers la page d'accueil
              break;
            case 1:
              // Navigation vers la page Orange Money
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrangeMoneyPage(phoneNumber: phoneNumber)),
              );
              break; // Ajout de la navigation vers la page OrangeMoneyPage
            case 2:
              // Navigation vers la page Ma Ligne
              break;
            case 3:
              // Navigation vers la page Marketplace
              break;
            case 4:
              // Navigation vers la page Codes QR
              break;
          }
        },
      ),
    );
  }

  static Widget _buildImageWithText(String imagePath, String text, Function()? onTap) {
    return Column(
      children: [
        ClipOval(
          child: Material(
            color: Colors.transparent,
            child: Ink.image(
              image: AssetImage(imagePath),
              width: 50,
              height: 40,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
