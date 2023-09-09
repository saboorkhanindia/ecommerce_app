class ParamsAddproducts {
  ParamsAddproductsBody? body;

  ParamsAddproducts({
    this.body,
  });

  ParamsAddproducts.fromJson(Map<String, dynamic> json) {
    body = json['body'] != null
        ? ParamsAddproductsBody.fromJson(json['body'])
        : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body?.toJson(),
    };
  }
}

class ParamsAddproductsBody {
  String? title;

  ParamsAddproductsBody({
    this.title,
  });

  ParamsAddproductsBody.fromJson(Map<String, dynamic> json) {
    title = json['title']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
    };
  }
}
