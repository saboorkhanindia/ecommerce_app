class ParamsUpdateproducts {
  ParamsUpdateproductsBody? body;

  ParamsUpdateproducts({
    this.body,
  });

  ParamsUpdateproducts.fromJson(Map<String, dynamic> json) {
    body = json['body'] != null
        ? ParamsUpdateproductsBody.fromJson(json['body'])
        : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body?.toJson(),
    };
  }
}

class ParamsUpdateproductsBody {
  String? title;

  ParamsUpdateproductsBody({
    this.title,
  });

  ParamsUpdateproductsBody.fromJson(Map<String, dynamic> json) {
    title = json['title']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
    };
  }
}
