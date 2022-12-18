import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFFFCFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCFFFF),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFFCC7677),
          ),
        ),
        
        actions: const [
          Icon(Icons.favorite_border_outlined, color: Color(0xFFCC7677)),
          SizedBox(
            width: 20,
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        color: const Color(0xFFFCFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.51,
              child: ModelViewer(
                src: 'assets/chair.glb',
                alt: "A 3D model of an astronaut",
                ar: true,
                autoRotate: true,
                backgroundColor:  const Color(0xFFFCFFFF),
                cameraControls: true,
                arPlacement: ArPlacement.floor,
              ),
            ),
            Text(
              "Easy chair",
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),Text(
              "#Bestseller",
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 14,color: Colors.amber),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Comfortable office chair upholstered in black bonded leather;Padded seat and back for all-day upholstered in black bonded leather;Padded seat and back for all-day comfort; Pneumatic seat-height adjustment",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w300, fontSize: 14)),const SizedBox(
              height: 20,
            ),
            Text(
              "Designed by: caltech",
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Spacer(),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text("₹400.00",style:
                  GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 20,)), 
                  Text("IN STOCK",style:GoogleFonts.lato(fontWeight: FontWeight.w400, fontSize: 14,color: Color(0xFFCC7677),))],
                ),
                SizedBox(height: 50,width: 150,child: ElevatedButton(onPressed: () {}, child: Text("ADD TO CART",style: GoogleFonts.lato(),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFCC7677),),))
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}
