import 'package:flutter/material.dart';

class OrangeMoneyPage extends StatelessWidget {
  final String phoneNumber;

  const OrangeMoneyPage({Key? key, required this.phoneNumber}) : super(key: key);

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(height: 20),
          Text(
            'Orange Money',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/TT.jpg',
                            width: 32,
                            height: 32,
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Solde principal',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: List.generate(
                                  4,
                                  (index) => Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Mes transactions Orange Money',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
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
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/de.jpeg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/fe.jpeg',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'SIM et SIM en ligne',
                              style: TextStyle(fontSize: 16.0, color: Colors.orange),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mes favoris',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Personnaliser',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          'assets/images/un.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Facturiers',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          'assets/images/xe.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Forfait Internet',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          'assets/images/deux.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Transférer de l\'argent',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          'assets/images/se.jpeg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Payer marchand',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Services',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'voir tout',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/deux.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Transférer de l\'argent'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/se.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Payer marchand'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Icon(
                                Icons.schedule,
                                color: Colors.orange,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mes dernières'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 0,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 48,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Icon(
                                Icons.person,
                                color: Colors.orange,
                                size: 48,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Parrainage'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/p.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tarifs'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/un.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Facturiers'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/xe.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Retirer de l\'argent'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
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
                      SizedBox(
                        width: double.infinity,
                        height: 120,
                        child: Image.asset(
                          'assets/images/rx.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('CANAL +'),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(color: Colors.white),
          SizedBox(height: 8),
          Text(
            'Offres spéciales',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 2,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Boutique en ligne',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: Color.fromRGBO(251, 243, 243, 1),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Smartphones, e-cartes, etc.',
                                style: TextStyle(color: Colors.orange),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: Colors.black,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fibre',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: Colors.white,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Eligibilité, réabonnement, etc',
                                style: TextStyle(color: Colors.orange),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
              break;
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
}
