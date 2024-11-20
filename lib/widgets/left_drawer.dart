import 'package:flutter/material.dart';
import 'package:gallery_sport/screens/list_productentry.dart';
import 'package:gallery_sport/screens/menu.dart';
import 'package:gallery_sport/screens/productentry_form.dart';



class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Gallery Sport',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      "Sportswear terbaik ya di Gallery Sport!",
                      textAlign: TextAlign.center, // Menyelaraskan teks di tengah
                      style: TextStyle(
                        fontSize: 15, // Ukuran font 15
                        color: Colors.white, // Warna font putih
                        fontWeight: FontWeight.normal, // Ketebalan font biasa (normal)
                      ),
                    )
                  ],
                ),          ),
          ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
           ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Daftar Mood'),
            onTap: () {
                // Route menu ke halaman mood
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                );
            },
        ),       ],
      ),
    );
  }
}