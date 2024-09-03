import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homework_app_10/color.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({
    super.key,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String cardName = "alexandra Smith"; // Initially set card name
  String cardNumber = "4747 4747 4747 4747"; // Initialize as empty string
  final bool icon = false;

  void updateCardNumber(String newNumber) {
    setState(() {
      // Remove all non-numeric characters
      String cleanedNumber = newNumber.replaceAll(RegExp(r'\D'), '');
      // Format the number into groups of 4 digits
      cardNumber = cleanedNumber
          .replaceAllMapped(
            RegExp(r'.{4}'),
            (match) => '${match.group(0)} ',
          )
          .trim();
    });
  }

  void updateCardName(String newName) {
    setState(() {
      cardName = newName; // Update the card name with the new value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Credit / Debit card",
                style: kTextStyle.copyWith(fontSize: 35),
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    Image.asset("assets/Base.png"),
                    Positioned(
                      child: Image.asset("assets/Ellipse.png"),
                      right: 0,
                      top: 0,
                    ),
                    Positioned(
                      top: 100,
                      left: 15,
                      child: Text(
                        cardNumber,
                        style: kInfoCard,
                      ),
                    ),
                    Positioned(
                        right: 25,
                        top: 25,
                        child: Image.asset("assets/mc_symbol.png")),
                    Positioned(
                        bottom: 25,
                        left: 15,
                        child: Text(
                          cardName.toUpperCase(),
                          style: kInfoCard.copyWith(fontSize: 25),
                        )),
                    Positioned(
                        bottom: 25,
                        right: 15,
                        child: Text(
                          "07/21",
                          style: kInfoCard.copyWith(fontSize: 25),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset("assets/Take a photo icon.png"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextFromFild(
                      maxLines: 20,
                      dateType: false,
                      onChanged: (value) {
                        updateCardName(value);
                      },
                      images: "assets/mc_symbol.png",
                      icon: icon,
                      width1: double.infinity,
                      cardName: "Name on card",
                    ),
                    MyTextFromFild(
                      maxLines: 16,
                      dateType: true,
                      images: "assets/mc_symbol.png",
                      icon: true,
                      width1: double.infinity,
                      cardName: "Card Number",
                      onChanged: (value) {
                        updateCardNumber(value); // Update card number on change
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextFromFild(
                            maxLines: 4,
                            dateType: true,
                            onChanged: (value) {},
                            images: "assets/mc_symbol.png",
                            icon: false,
                            cardName: "Expiry date",
                            width1: MediaQuery.of(context).size.width * .42),
                        MyTextFromFild(
                            maxLines: 4,
                            dateType: true,
                            onChanged: (value) {},
                            images: "assets/Hint.png",
                            icon: true,
                            cardName: "CVC",
                            width1: MediaQuery.of(context).size.width * .42),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kPrimeryColor,
                          borderRadius: BorderRadius.circular(15)),
                      height: MediaQuery.of(context).size.height * .070,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "use this card".toUpperCase(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: kWhiteColor),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFromFild extends StatelessWidget {
  final String images;
  final bool icon;
  final String cardName;
  final double width1;
  final Function(String) onChanged;
  final bool dateType;
  final int maxLines;

  MyTextFromFild(
      {super.key,
      required this.icon,
      required this.width1,
      required this.cardName,
      required this.images,
      required this.onChanged,
      required this.dateType,
      required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width1,
      color: Colors.white,
      child: TextField(
        maxLength: maxLines,
        onChanged: onChanged,
        keyboardType: dateType ? TextInputType.number : TextInputType.name,
        decoration: InputDecoration(
          counterText: "",
          labelText: cardName,
          suffixIcon: icon
              ? Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Image.asset(
                    images,
                    width: 40,
                  ),
                )
              : SizedBox(),
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
