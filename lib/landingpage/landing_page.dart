import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Bimbingan Belajar \nPemrogaman",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color.fromRGBO(19, 162, 176, 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Kami membantu menemukan passion anda dibidang komputer. Segera bergabung bersama kami dan raih mimpimu!",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(19, 162, 176, 1),
              ),
            ),
          ),
          MaterialButton(
              onPressed: () {},
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: Text(
                  "Fasilitas Kami",
                  style: TextStyle(color: Color.fromRGBO(19, 162, 176, 1),),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset(
          "assets/images/book_image.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    /* 
    layout builder kita gunakan untuk membuat website yang responsive
    */
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width / 2));
        } else {
          return Column(children: pageChildren(constraints.biggest.width));
        }
      },
    );
  }
}
