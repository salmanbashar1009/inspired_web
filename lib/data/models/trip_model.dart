class TripModel {
  final int id;
  final String title;
  final String? description;
  final String date;
  final String? price;
  final String? image;
  final String? videoLink;
  final String? paymentLink;
  final String? category;

  TripModel({
    required this.id,
    required this.title,
    this.description,
    required this.date,
    this.price,
    this.image,
    this.videoLink,
    this.paymentLink,
    this.category,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'] is int ? json['id'] : (int.tryParse(json['id'].toString()) ?? (throw FormatException('Invalid id'))),
      title: json['title']?.toString() ?? (throw FormatException('Missing title')),
      description: json['description']?.toString(),
      date: json['date']?.toString() ?? (throw FormatException('Missing date')),
      price: json['price']?.toString() ?? (throw FormatException('Missing price')),
      image: json['image']?.toString(),
      videoLink: json['video_link']?.toString(),
      paymentLink: json['payment_link']?.toString(),
      category: json['category']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date,
      'price': price?.toString(),
      'image': image,
      'video_link': videoLink,
      'payment_link': paymentLink,
      'category': category,
    };
  }
}