class Contacts {
  String name;
  String image;
  String number;
  Contacts({
    required this.name,
    required this.image,
    required this.number,
  });
}

List<Contacts> accounts = [
  Contacts(
    name: 'House', 
    image: 'assets/cesar.jpg',
    number: '1038449350'
  ),
  Contacts(
    name: 'Thirteen', 
    image: 'assets/rachel.jpg',
    number: '4938405839'
  ),
    Contacts(
    name: 'Chase', 
    image: 'assets/chase.jpg',
    number: '9402024956'
  ),
    Contacts(
    name: 'Cameron', 
    image: 'assets/cameron.jpg',
    number: '4059620495'
  ),
    Contacts(
    name: 'Foreman', 
    image: 'assets/foreman.jpg',
    number: '4958603034'
  ),
];