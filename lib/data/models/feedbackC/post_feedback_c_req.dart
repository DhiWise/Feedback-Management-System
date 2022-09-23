class PostFeedbackCReq {
  String? name;
  String? emailC;
  String? descriptionC;
  String? statusC;
  String? techC;

  PostFeedbackCReq(
      {this.name, this.emailC, this.descriptionC, this.statusC, this.techC});

  PostFeedbackCReq.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    emailC = json['Email__c'];
    descriptionC = json['description__c'];
    statusC = json['Status__c'];
    techC = json['Tech__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['Name'] = this.name;
    }
    if (this.emailC != null) {
      data['Email__c'] = this.emailC;
    }
    if (this.descriptionC != null) {
      data['description__c'] = this.descriptionC;
    }
    if (this.statusC != null) {
      data['Status__c'] = this.statusC;
    }
    if (this.techC != null) {
      data['Tech__c'] = this.techC;
    }
    return data;
  }
}
