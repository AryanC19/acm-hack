import 'package:flutter/material.dart';

import 'package:model_viewer_plus/model_viewer_plus.dart';

class LoginPage extends StatelessWidget {
  static String id = "LoginPage";

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDEB),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          const SizedBox(
            height: 130,
          ),
          const Text(
            "Visualizer",
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 80,
            ),
          ),
          const Text(
            "Ghar ko ghar banaye",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          const Text(
            "Room decor and furniture through AR",
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 120,
          ),
          const Text(
            "Sign up",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 20, bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {} ),
                // );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor: const Color(0xFFCC7677)),
              child: const Text(
                "Buyer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 20, bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor: const Color(0xFFCC7677)),
              child: const Text(
                "Seller",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
