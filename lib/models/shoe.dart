class Shoe {
  final String name;
  final String picture;
  final double price;
  final String description;

  const Shoe({this.name = '', this.picture = '', this.price = 0.0, this.description = ''});

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      name: json['name'],
      picture: json['picture'],
      price: json['price'],
      description: json['description'],
    );
  }
}