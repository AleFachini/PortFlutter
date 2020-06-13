import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "HomePage AF",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(children: [
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 30),
              Text(
                "About Us",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 30),
              Text(
                "Portfolio",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 30),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                onPressed: () {},
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ])
          ],
        ),
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
          children: <Widget>[
            Text(
              "HomePage AF",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
