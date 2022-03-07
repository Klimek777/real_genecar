class Oferta {
  final String title;
  final String image;
  final String firma;
  final String model;
  final String cena;
  final String rok;
  final String przebieg;
  Oferta({
    required this.title,
    required this.image,
    required this.firma,
    required this.model,
    required this.cena,
    required this.rok,
    required this.przebieg,
  });
}

final data = [
  Oferta(
    title: 'Audi S3 ',
    image: 'assets/images/audi_1.jpeg',
    firma: 'Audi',
    model: 'S3',
    cena: '150 000 zł',
    rok: '2018',
    przebieg: '80 000km',
  ),
  Oferta(
      title: 'AUDI R8',
      image: 'assets/images/bmw_r8.jpeg',
      firma: 'AUDI',
      model: 'R8',
      cena: '280 000 zł',
      rok: '2015',
      przebieg: '120 000km'),
  Oferta(
    title: 'BMW seria 3',
    image: 'assets/images/bmw_1.jpeg',
    firma: 'BMW',
    model: '3',
    cena: '280 000 zł',
    rok: '2019',
    przebieg: '60 000km',
  ),
];
