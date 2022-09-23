class PostCreateResp {
  String? id;

  PostCreateResp({this.id});

  PostCreateResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}
