class UpdateproductsModel {
  int? id;
  String? title;
  int? price;
  int? stock;
  double? rating;
  List<String>? images;
  String? thumbnail;
  String? description;
  String? brand;
  String? category;

  UpdateproductsModel({
    this.id,
    this.title,
    this.price,
    this.stock,
    this.rating,
    this.images,
    this.thumbnail,
    this.description,
    this.brand,
    this.category,
  });

  UpdateproductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title']?.toString();
    price = json['price'];
    stock = json['stock'];
    rating = json['rating']?.toDouble();
    if (json['images'] != null) {
      images =
          (json['images'] as List).map<String>((e) => e.toString()).toList();
    }
    thumbnail = json['thumbnail']?.toString();
    description = json['description']?.toString();
    brand = json['brand']?.toString();
    category = json['category']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'stock': stock,
      'rating': rating,
      'images': images,
      'thumbnail': thumbnail,
      'description': description,
      'brand': brand,
      'category': category,
    };
  }
}
