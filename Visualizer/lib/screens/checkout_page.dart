import 'package:flutter/material.dart';

import 'package:model_viewer_plus/model_viewer_plus.dart';

class CheckoutPage extends StatelessWidget {
  static String id = "CheckoutPage";

  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDEB),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 270),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFCC7677)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const LoginPage()),
                // );
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  "ITEM",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  "NAME",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  "QUANTITY",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/bed.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "BED",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/chair.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "CHAIR",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/sofa.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "SOFA",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/table.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "TABLE",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/bed.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "BED",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/bed.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "BED",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF967A76),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/bed.png",
                              height: 100,
                              width: 150,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 35),
                          child: Text(
                            "BED",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              "X2",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xFFCC7677),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "+1",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFCC7677)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.delete)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 250.0,
                ),
                child: Column(
                  children: [
                    Text(
                      "Total:Rs.53,000",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFCC7677)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Buy",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
