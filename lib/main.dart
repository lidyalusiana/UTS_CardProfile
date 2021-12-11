import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CardProfile(),
    routes: <String, WidgetBuilder>{
      '/CardProfile': (BuildContext context) => CardProfile(),
      '/HalamanSatu': (BuildContext context) => HalamanSatu(),
      '/HalamanDua': (BuildContext context) => HalamanDua(),
      '/HalamanTiga': (BuildContext context) => HalamanTiga(),
      '/HalamanEmpat': (BuildContext context) => HalamanEmpat(),
    },
  ));
}

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/rumah.jpg'),
            ),
            Text(
              'Lidya Lusiana',
              style: TextStyle(
                  fontFamily: 'Bemy',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'What',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/HalamanSatu');
                },
                title: Text(
                  'NO Telepon/HP',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/HalamanDua');
                },
                title: Text(
                  'E-MAIL',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_history,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/HalamanTiga');
                },
                title: Text(
                  'ALAMAT',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/HalamanEmpat');
                },
                title: Text(
                  'HOBI',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
        child: ListTile(
          leading: Icon(
            Icons.phone,
            size: 50.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/CardProfile');
          },
          title: Text(
            'NO HP: 0812 5388 8020',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: 'Bemy'),
          ),
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
        child: ListTile(
          leading: Icon(
            Icons.email,
            size: 50.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/CardProfile');
          },
          title: Text(
            'E-mail: lidyalusiana15@gmail.com',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: 'Bemy'),
          ),
        ),
      ),
    );
  }
}

class HalamanTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
        child: ListTile(
          leading: Icon(
            Icons.location_history,
            size: 50.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/CardProfile');
          },
          title: Text(
            'Jl.Raya Stagen KM.5, Desa Sungai Taib. RT.1 RW.1 NO.21, Pulau Laut Utara',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: 'Bemy'),
          ),
        ),
      ),
    );
  }
}

class HalamanEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
        child: ListTile(
          leading: Icon(
            Icons.favorite,
            size: 50.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/CardProfile');
          },
          title: Text(
            'Hobi saya mendengankan musik dan jalan-jalan',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: 'Bemy'),
          ),
        ),
      ),
    );
  }
}
