class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House('Sweet Home', 'Blok M Jakarta',
          'assets/images/house01.jpeg'),
      House('Elite House', 'South Jakarta',
          'assets/images/house02.jpeg'),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House('Sweet Home', 'Blok M Jakarta',
          'assets/images/house01.jpeg'),
      House('Elite House', 'South Jakarta',
          'assets/images/house02.jpeg'),
    ];
  }

}