class PostBoardsListResp {
  List<Boards>? boards;

  PostBoardsListResp({this.boards});

  PostBoardsListResp.fromJson(Map<String, dynamic> json) {
    if (json['boards'] != null) {
      boards = <Boards>[];
      json['boards'].forEach((v) {
        boards?.add(Boards.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.boards != null) {
      data['boards'] = this.boards?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Boards {
  String? created;
  String? id;
  bool? isPrivate;
  String? name;
  int? postCount;
  Null? privateComments;
  String? token;
  String? url;

  Boards(
      {this.created,
      this.id,
      this.isPrivate,
      this.name,
      this.postCount,
      this.privateComments,
      this.token,
      this.url});

  Boards.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    id = json['id'];
    isPrivate = json['isPrivate'];
    name = json['name'];
    postCount = json['postCount'];
    privateComments = json['privateComments'];
    token = json['token'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.isPrivate != null) {
      data['isPrivate'] = this.isPrivate;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.postCount != null) {
      data['postCount'] = this.postCount;
    }
    if (this.privateComments != null) {
      data['privateComments'] = this.privateComments;
    }
    if (this.token != null) {
      data['token'] = this.token;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}
