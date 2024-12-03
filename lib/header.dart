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
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.025),
              child: Image(
                image: const AssetImage('assets/images/logotarsis.png'),
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Animação',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Web Design',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Web Dev',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text(
                  'Unity Dev',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.025,
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: ElevatedButton(
                onPressed: () {
                  print("Botão 'Conatatp' pressionado!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: const Text(
                  'Contato',
                  style: TextStyle(
                      color: PaletaCores.mainCinza,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
