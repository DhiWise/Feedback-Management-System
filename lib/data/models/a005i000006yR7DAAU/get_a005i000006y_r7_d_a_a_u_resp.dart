class GetA005i000006yR7DAAUResp {
  Attributes? attributes;
  String? emailC;
  String? name;
  String? descriptionC;
  String? statusC;
  String? techC;
  String? id;

  GetA005i000006yR7DAAUResp(
      {this.attributes,
      this.emailC,
      this.name,
      this.descriptionC,
      this.statusC,
      this.techC,
      this.id});

  GetA005i000006yR7DAAUResp.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    emailC = json['Email__c'];
    name = json['Name'];
    descriptionC = json['description__c'];
    statusC = json['Status__c'];
    techC = json['Tech__c'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    if (this.emailC != null) {
      data['Email__c'] = this.emailC;
    }
    if (this.name != null) {
      data['Name'] = this.name;
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
    if (this.id != null) {
      data['Id'] = this.id;
    }
    return data;
  }
}

class Attributes {
  String? type;
  String? url;

  Attributes({this.type, this.url});

  Attributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}
