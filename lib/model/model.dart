class Travel {
  String name;
  String location;
  String imgurl;

  Travel(this.name, this.location, this.imgurl);

  static List<Travel> blogList() {
    return [
      Travel('Dhaka1', 'location1', 'images/top1.jpg'),
      Travel('Dhaka2', 'location2', 'images/top2.jpg'),
      Travel('Dhaka3', 'location3', 'images/top3.jpg'),
      Travel('Dhaka4', 'location4', 'images/top4.jpg'),
    ];
  }

  static List<Travel> mostPopular() {
    return [
      Travel('Dhaka1', 'location1', 'images/top1.jpg'),
      Travel('Dhaka2', 'location2', 'images/top2.jpg'),
      Travel('Dhaka3', 'location3', 'images/top3.jpg'),
      Travel('Dhaka4', 'location4', 'images/top4.jpg'),
    ];
  }
}
