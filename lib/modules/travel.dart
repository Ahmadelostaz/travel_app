class Travel {
  late String name;
  late String location;
  late String url;
  Travel(this.name, this.location, this.url);
  static List<Travel> getTravelBlogs() {
    return [
      Travel('Sea of beauty', 'Greek', 'assets/images/travel1.jpeg'),
      Travel('Camels on desert', 'SaudiArabia', 'assets/images/travel2.jpeg'),
      Travel('Turkish wonder ', 'Istanbul', 'assets/images/travel3.jpeg'),
      Travel('Colors festival ', 'India', 'assets/images/travel4.jpeg'),
      Travel('Black forest ', 'Germany', 'assets/images/travel5.jpeg'),
    ];

  }
  static List<Travel> getBottomBlogs() {
    return [
      Travel('Amazon River', 'Brazil', 'assets/images/travel6.jpeg'),
      Travel('Moon of Iceland', 'Reykjavík', 'assets/images/travel7.jpeg'),
      Travel('Lack of Hell ', 'Jakarta', 'assets/images/travel8.jpeg'),
      Travel('El-Rom valley  ', 'Jordan', 'assets/images/travel9.jpeg'),
    ];

  }
}
