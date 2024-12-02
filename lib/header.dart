import 'package:flutter/material.dart';
import 'package:tarsis_site/useful/paleta.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: PaletaCores.mainCinza),
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Image(
                image: const AssetImage('assets/images/logotarsis.png'),
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Web Design',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Web Dev',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Unity Dev',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Text(
                    'Contato',
                    style:
                        TextStyle(color: PaletaCores.mainCinza, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
