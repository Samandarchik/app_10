import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/payment_screen.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentScreen()));
            },
            child: const Text("Checkout")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10, right: 15),
          child: Column(
            children: [
              const RowWidget(
                title: 'Payment method',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.credit_card_sharp,
                    size: 35,
                  ),
                  Text(
                    "   **** **** **** 4747",
                    style: kLingTextStyle,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const RowWidget(
                title: 'Delivery address',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    CupertinoIcons.home,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                          children: [
                        TextSpan(
                          text: "Alexandra smith\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 25),
                        ),
                        TextSpan(text: "Cesu 31 k-2 5 st, SIA Chili\n"),
                        WidgetSpan(
                          child: SizedBox(height: 25),
                        ),
                        TextSpan(text: "Rign\n"),
                        WidgetSpan(
                          child: SizedBox(height: 25),
                        ),
                        TextSpan(text: "LV-1012\n"),
                        WidgetSpan(
                          child: SizedBox(height: 25),
                        ),
                        TextSpan(text: "Litvia"),
                      ]))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const RowWidget(title: "Delivery options"),
              const RowIcon(
                iscolor: false,
                icon: "assets/walking.png",
                text: "I’ll pick it up myself",
              ),
              const RowIcon(
                  iscolor: false, icon: "assets/bike.png", text: "Text"),
              const RowIcon(
                iscolor: true,
                icon: "assets/dron.png",
                text: "text",
              ),
              Row(
                children: [
                  Text(
                    "Non-contact-delivery",
                    style: kTextStyle,
                  ),
                  const Spacer(),
                  Switch.adaptive(
                      value: true,
                      activeColor: kLingColor,
                      onChanged: (bool value) {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowIcon extends StatelessWidget {
  final String icon;
  final String text;
  final bool iscolor;

  const RowIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.iscolor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(fit: BoxFit.fill, icon),
        ),
        Text(
          "   $text",
          style: TextStyle(
              fontSize: 18, color: iscolor ? kTextColor : Colors.black),
        ),
        const Spacer(),
        Icon(
          Icons.check,
          color: iscolor ? kTextColor : Colors.transparent,
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  final String title;
  const RowWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kTextStyle,
        ),
        Text(
          "CHANGE",
          style: kChangeStyle,
        )
      ],
    );
  }
}
