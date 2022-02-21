import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* 
    layout builder kita gunakan untuk membuat website yang responsive
    */
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Prastyo Bimbel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(19, 162, 176, 1),
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              Text(
                "Beranda",
                style: TextStyle(
                  color: Color.fromRGBO(19, 162, 176, 1),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Tentang Kami",
                style: TextStyle(
                  color: Color.fromRGBO(19, 162, 176, 1),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Para Alumni",
                style: TextStyle(
                  color: Color.fromRGBO(19, 162, 176, 1),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {},
                color: Color.fromRGBO(19, 162, 176, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  "Ayo Gabung!",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              "Prastyo Bimbel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(19, 162, 176, 1),
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Beranda",
                    style: TextStyle(
                      color: Color.fromRGBO(19, 162, 176, 1),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Tentang Kami",
                    style: TextStyle(
                      color: Color.fromRGBO(19, 162, 176, 1),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Para Alumni",
                    style: TextStyle(
                      color: Color.fromRGBO(19, 162, 176, 1),
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
