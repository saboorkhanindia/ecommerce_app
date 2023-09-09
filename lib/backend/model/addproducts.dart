class AddproductsModel {
  int? id;
  String? title;

  AddproductsModel({
    this.id,
    this.title,
  });

  AddproductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}
