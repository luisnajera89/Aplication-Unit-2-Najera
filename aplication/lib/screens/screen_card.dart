import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Card'),
      ),
      body: CreditCard(
          cardNumber: "5456 1809 6514 7887",
          cardExpiry: "1/27",
          cardHolderName: "Jefferson Gutierritos",
          cvv: "666",
          bankName: "Santander Bank",
          cardType:
              CardType.masterCard, // Optional if you want to override Card Type
          showBackSide: false,
          frontBackground: CardBackgrounds.black,
          backBackground: CardBackgrounds.white,
          showShadow: true,
          textExpDate: 'Exp. Date',
          textName: 'Name',
          textExpiry: 'MM/YY'),
    );
  }
}
