import 'package:flutter/material.dart';
import 'package:study_tracker/widgets/drawer.dart';
import 'package:study_tracker/pages/form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
  appBar: AppBar(
    // Set title aplikasi menjadi Study Tracker
    title: const Text( 
      'Study Tracker',
    ),
  ),
  drawer: const DrawerMenu(),
  body: SingleChildScrollView( // Widget wrapper yang dapat discroll
    child: Padding( 
      padding: const EdgeInsets.all(10.0), // Set padding dari halaman
      child: Column( // Widget untuk menampilkan children secara vertikal
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
            child: Text(
              'Selamat datang!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Grid layout
          GridView.count(
            primary: true,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: <Widget>[
              Material(
                color: Colors.green,
                child: InkWell( // Area responsive terhadap sentuhan
                  onTap: () {
                    // Memunculkan SnackBar ketika diklik
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(const SnackBar(
                      content: Text("Kamu telah menekan tombol Lihat Riwayat Tugas!")));
                  },
                  child: Container( // Container untuk menyimpan Icon dan Text
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.list_alt,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            "Lihat Riwayat Tugas",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.green,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => const MyFormPage()),
    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_box,
                            color: Colors.white,
                            size: 40.0,
                          ),
                          Padding(padding: EdgeInsets.all(1)),
                          Text(
                            "Tambah Tugas",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.green,
                child: InkWell(
                  onTap: () {
                    
                    ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(const SnackBar(
                      content: Text("Kamu telah menekan tombol Logout!")));
                    
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            // Kamu juga dapat mengggunakan icon lainnya
                            // seperti Icons.logout
                            Icons.door_back_door,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            "Logout",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);
  }
}