import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:geolocator/geolocator.dart';

import '../data/fetch_data.dart';
import 'home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snap) {
          if (snap.hasData) {
            return HomeScreen(snap.data!);
          } else {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text("Hello world"),
          );
        },
      ),
    );
  }
}
