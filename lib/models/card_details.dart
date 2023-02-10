import 'package:flutter/material.dart';

class CardDetails {
  String cardName;
  String cardNumber;
  String cardBalance;
  String expiryDate;
  String cvvCode;
  String cardLogo;
  Color cardColor;
  CardDetails({
    required this.cardName,
    required this.cardNumber,
    required this.cardBalance,
    required this.expiryDate,
    required this.cvvCode,
    required this.cardLogo,
    required this.cardColor,
  });
}


List<CardDetails> cardDetails = [
  CardDetails(
    cardName: 'Lisa Cuddy', 
    cardNumber: '1234 5678 9101 1121', 
    cardBalance: '\$4,500', 
    expiryDate: '05/30', 
    cvvCode: '111', 
    cardLogo: 'assets/mastercard.png',
    cardColor: const Color.fromRGBO(38, 50, 45, 1)
  ),
  CardDetails(
    cardName: 'Lisa Cuddy', 
    cardNumber: '1121 1109 8765 4321', 
    cardBalance: '\$3,000', 
    expiryDate: '05/30', 
    cvvCode: '222', 
    cardLogo: 'assets/visa.png',
    cardColor: const Color.fromRGBO(198, 109, 57, 1)
  ),
  CardDetails(
    cardName: 'Lisa Cuddy', 
    cardNumber: '2111 0191 7856 3412', 
    cardBalance: '\$5,500', 
    expiryDate: '05/31', 
    cvvCode: '333', 
    cardLogo: 'assets/mastercard.png',
    cardColor: const Color.fromRGBO(90, 97, 156, 1)
  )
];