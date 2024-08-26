import 'package:flutter/material.dart';
import 'package:homework_app_10/screen/payment_screen.dart';
import 'package:homework_app_10/widget/buttom_navigator_bar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Splash Screen.png"),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 25),
                height: 63,
                width: 63,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFCDFFB6)),
                child: Image.asset("assets/D.png"),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.59,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF6F5F5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 12),
                        width: 104,
                        height: 104,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Image.asset("assets/Box.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Color(0xFF2D0C57),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(text: "Non-Contact\n    Deliveries")
                            ])),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 30),
                        width: MediaQuery.of(context).size.width * .90,
                        child: const Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door."),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const BottomNavigationBar1();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFF0BCE83),
                          ),
                          width: MediaQuery.of(context).size.width * .9,
                          child: Text(
                            textAlign: TextAlign.center,
                            "order now".toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("dismiss".toUpperCase()),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
