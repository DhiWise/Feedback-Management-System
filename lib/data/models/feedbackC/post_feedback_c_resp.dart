class PostFeedbackCResp {
  String? id;
  bool? success;
  List? errors;

  PostFeedbackCResp({this.id, this.success, this.errors});

  PostFeedbackCResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    success = json['success'];
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.success != null) {
      data['success'] = this.success;
    }
    if (this.errors != null) {
      data['errors'] = this.errors?.map((v) => v).toList();
    }
    return data;
  }
}
