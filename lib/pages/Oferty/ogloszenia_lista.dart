class Oferta {
  final String title;
  final String image;
  final String firma;
  final String model;
  final String cena;
  final String rok;
  final String przebieg;
  final String opis;
  final String image1;
  final String image2;
  final String image3;
  Oferta(
      {required this.title,
      required this.image,
      required this.firma,
      required this.model,
      required this.cena,
      required this.rok,
      required this.przebieg,
      required this.opis,
      required this.image1,
      required this.image2,
      required this.image3});
}

final data = [
  Oferta(
    title: 'Audi S3 ',
    image: 'assets/images/audi_1.jpeg',
    firma: 'Audi',
    model: 'S3',
    cena: '150 000 zł',
    rok: '2018',
    przebieg: '80.000km',
    opis:
        'Artykuły serwisu Magazyn Motoryzacyjny przeznaczone są dla wszystkich, którym nie wystarczają powierzchowne informacje zawarte w popularnej prasie i serwisach motoryzacyjnych. W artykułach odnajdziesz rzetelne informacje oraz szczegółowe objaśnienia przedstawione w przyjazny sposób, w czterech grupach tematycznych. Dwie z nich poświęcone są finalnemu pięknu motoryzacji, czyli konkretnym samochodom. Prezentacje samochodów opisuje nowoczesne imponujące pojazdy, natomiast Motoryzacja klasyczna opisuje historyczne ikony motoryzacji. Dla wszystkich, którzy samochody chcą poznać od środka przeznaczone są działy Technika silnikowa oraz Technika samochodowa. Zapraszamy do czytania naszych artykułów!',
    image1: 'assets/images/audi_1.jpeg',
    image2: 'assets/images/audi_1.jpeg',
    image3: 'assets/images/audi_1.jpeg',
  ),
  Oferta(
    title: 'AUDI R8',
    image: 'assets/images/bmw_r8.jpeg',
    firma: 'AUDI',
    model: 'R8',
    cena: '280 000 zł',
    rok: '2015',
    przebieg: '120.000km',
    opis: 'sss',
    image1: 'assets/images/audi_1.jpeg',
    image2: 'assets/images/audi_2.jpeg',
    image3: 'assets/images/audi_1.jpeg',
  ),
  Oferta(
    title: 'BMW seria 3',
    image: 'assets/images/bmw_1.jpeg',
    firma: 'BMW',
    model: '3',
    cena: '280 000 zł',
    rok: '2019',
    przebieg: '60.000km',
    opis: 'sss',
    image1: 'assets/images/audi_1.jpeg',
    image2: 'assets/images/audi_1.jpeg',
    image3: 'assets/images/audi_1.jpeg',
  ),
];
