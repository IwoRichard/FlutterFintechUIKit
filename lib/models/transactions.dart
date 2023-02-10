class Transactions {
  String title;
  String logo;
  String price;
  String date;
  bool debit;
  Transactions({
    required this.title,
    required this.logo,
    required this.price,
    required this.date,
    required this.debit,
  });
}

List<Transactions> transactionsList = [
  Transactions(
    title: 'Money from kimson',
    logo: 'assets/kimson.jpg', 
    price: '+\$9.99', 
    date: 'Jan 29, 2023',
    debit: false
  ),
  Transactions(
    title: 'Money from ritchie',
    logo: 'assets/cesar.jpg', 
    price: '+\$50.00', 
    date: 'Jan 22, 2023',
    debit: false
  ),
  Transactions(
    title: 'Youtube subscription',
    logo: 'assets/youtube.png', 
    price: '-\$9.99', 
    date: 'Jan 20, 2023',
    debit: true
  ),
    Transactions(
    title: 'Money from rachel',
    logo: 'assets/rachel.jpg', 
    price: '+\$9.99', 
    date: 'Jan 19, 2023',
    debit: false
  ),
    Transactions(
    title: 'Money from mike',
    logo: 'assets/mike.jpg', 
    price: '+\$25.00', 
    date: 'Jan 19, 2023',
    debit: false
  )
];