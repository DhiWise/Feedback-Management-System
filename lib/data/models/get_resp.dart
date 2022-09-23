class GetResp {
  int? totalSize;
  bool? done;
  List<Records>? records;

  GetResp({this.totalSize, this.done, this.records});

  GetResp.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records?.add(Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.totalSize != null) {
      data['totalSize'] = this.totalSize;
    }
    if (this.done != null) {
      data['done'] = this.done;
    }
    if (this.records != null) {
      data['records'] = this.records?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Records {
  Attributes? attributes;
  String? name;
  String? descriptionC;
  String? statusC;
  String? techC;

  Records(
      {this.attributes,
      this.name,
      this.descriptionC,
      this.statusC,
      this.techC});

  Records.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    name = json['Name'];
    descriptionC = json['description__c'];
    statusC = json['Status__c'];
    techC = json['Tech__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
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
