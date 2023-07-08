import 'package:app1/shrut.dart';
import 'package:flutter/material.dart';

class Bhumit extends StatefulWidget {
  const Bhumit({super.key});

  @override
  State<Bhumit> createState() => _BhumitState();
}

class _BhumitState extends State<Bhumit> {
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 16, 25, 16),
        child: ListView(
          children: <Widget>[
            const Image(image: AssetImage("images/main-logo.png")),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Text(
                "Please register to create an account",
                style: TextStyle(fontSize: 34, fontFamily: 'Manrope'),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                decoration: InputDecoration(
                  hintText: "MRN/PIN",
                  prefixIcon: Image(image: AssetImage("images/mpin.png")),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextField(
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                decoration: InputDecoration(
                  hintText: "Date of Birth",
                  prefixIcon: Image(image: AssetImage("images/mpin.png")),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextField(
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                decoration: InputDecoration(
                  hintText: "Email Address",
                  prefixIcon: Image(image: AssetImage("images/mpin.png")),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: const Color.fromRGBO(193, 193, 193, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Shrut()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(3, 91, 210, 1),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "St. Luke’s Medical Center © 2023 \nTerms of Service | Privacy Policy",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
