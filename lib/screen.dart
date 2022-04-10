import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portofolio');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/galeri');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            new Image.asset(
              'assets/ridho.jpeg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15)),
            Center(
              child: Text(
                "Nama               : Ridho Pijak Imana\n"
                "Nim                  : 362055401018\n"
                "Prodi                : Teknik Informatika\n"
                "Jenis Kelamin   : Laki-Laki\n",
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ));
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Portofolio'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: Column(children: [
          Text("Nama: Ridho Pijak Imana"),
          Text("Email: ridhopjk12@gmail.com")
        ]));
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Musik (Bahasa Yunani: μουσική, mousikê).Musik terdiri dari beberapa unsur, yaitu melodi, harmoni, ritme, dan timbre.Musik termasuk sejenis fenomena intuisi, untuk mencipta, memperbaiki, dan mempersembahkannya adalah suatu bentuk seni. Musik adalah sebuah fenomena unik yang dihasilkan oleh beberapa alat musik. Namun seni musik tidak hanya sebatas bunyi/suara yang dihasilkan dari alat musik, apa pun yang bisa menghasilkan bunyi/suara itu bisa dianggap sebagai musik istilahnya disebut dengan musik alam, bahkan suara langkah kaki manusia yang sedang berjalan, suara desiran angin, suara hantaman ombak itu sudah bisa dianggap musik walaupun tidak ada unsur kesengajaan dari perbuatan makhluk.', overflow: TextOverflow.clip, style: TextStyle(fontSize: 18, color: Colors.black), textAlign: TextAlign.start),
          ),
        ],
      ),
    );
  }
}

class Galeri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Galeri'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
