class Transactions {
  String title;
  String price;
  String date;
  bool debit;
  Transactions({
    required this.title,
    required this.price,
    required this.date,
    required this.debit,
  });
}

List<Transactions> transactionsList = [
  Transactions(
    title: 'Money from kimson',
    price: '+\$9.99', 
    date: 'Jan 29, 2023',
    debit: false
  ),
  Transactions(
    title: 'Netflix subscription',
    price: '-\$9.99', 
    date: 'Jan 22, 2023',
    debit: true
  ),
  Transactions(
    title: 'Youtube subscription',
    price: '-\$9.99', 
    date: 'Jan 20, 2023',
    debit: true
  ),
    Transactions(
    title: 'Money from rachel',
    price: '+\$9.99', 
    date: 'Jan 19, 2023',
    debit: false
  ),
    Transactions(
    title: 'Money from mike',
    price: '+\$25.00', 
    date: 'Jan 19, 2023',
    debit: false
  )
];