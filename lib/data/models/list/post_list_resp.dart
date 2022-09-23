class PostListResp {
  bool? hasMore;
  List<Posts>? posts;

  PostListResp({this.hasMore, this.posts});

  PostListResp.fromJson(Map<String, dynamic> json) {
    hasMore = json['hasMore'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts?.add(Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.hasMore != null) {
      data['hasMore'] = this.hasMore;
    }
    if (this.posts != null) {
      data['posts'] = this.posts?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  Author? author;
  Board? board;
  Null? by;
  Null? category;
  int? commentCount;
  String? created;
  List? customFields;
  String? details;
  Null? eta;
  String? id;
  List? imageURLs;
  Jira? jira;
  List? mergeHistory;
  Null? owner;
  int? score;
  String? status;
  String? statusChangedAt;
  List? tags;
  String? title;
  int? totalMRR;
  String? url;

  Posts(
      {this.author,
      this.board,
      this.by,
      this.category,
      this.commentCount,
      this.created,
      this.customFields,
      this.details,
      this.eta,
      this.id,
      this.imageURLs,
      this.jira,
      this.mergeHistory,
      this.owner,
      this.score,
      this.status,
      this.statusChangedAt,
      this.tags,
      this.title,
      this.totalMRR,
      this.url});

  Posts.fromJson(Map<String, dynamic> json) {
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    board = json['board'] != null ? Board.fromJson(json['board']) : null;
    by = json['by'];
    category = json['category'];
    commentCount = json['commentCount'];
    created = json['created'];
    if (json['customFields'] != null) {
      customFields = [];
      json['customFields'].forEach((v) {
        customFields?.add(v);
      });
    }
    details = json['details'];
    eta = json['eta'];
    id = json['id'];
    if (json['imageURLs'] != null) {
      imageURLs = [];
      json['imageURLs'].forEach((v) {
        imageURLs?.add(v);
      });
    }
    jira = json['jira'] != null ? Jira.fromJson(json['jira']) : null;
    if (json['mergeHistory'] != null) {
      mergeHistory = [];
      json['mergeHistory'].forEach((v) {
        mergeHistory?.add(v);
      });
    }
    owner = json['owner'];
    score = json['score'];
    status = json['status'];
    statusChangedAt = json['statusChangedAt'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(v);
      });
    }
    title = json['title'];
    totalMRR = json['totalMRR'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.author != null) {
      data['author'] = this.author?.toJson();
    }
    if (this.board != null) {
      data['board'] = this.board?.toJson();
    }
    if (this.by != null) {
      data['by'] = this.by;
    }
    if (this.category != null) {
      data['category'] = this.category;
    }
    if (this.commentCount != null) {
      data['commentCount'] = this.commentCount;
    }
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.customFields != null) {
      data['customFields'] = this.customFields?.map((v) => v).toList();
    }
    if (this.details != null) {
      data['details'] = this.details;
    }
    if (this.eta != null) {
      data['eta'] = this.eta;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.imageURLs != null) {
      data['imageURLs'] = this.imageURLs?.map((v) => v).toList();
    }
    if (this.jira != null) {
      data['jira'] = this.jira?.toJson();
    }
    if (this.mergeHistory != null) {
      data['mergeHistory'] = this.mergeHistory?.map((v) => v).toList();
    }
    if (this.owner != null) {
      data['owner'] = this.owner;
    }
    if (this.score != null) {
      data['score'] = this.score;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.statusChangedAt != null) {
      data['statusChangedAt'] = this.statusChangedAt;
    }
    if (this.tags != null) {
      data['tags'] = this.tags?.map((v) => v).toList();
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.totalMRR != null) {
      data['totalMRR'] = this.totalMRR;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Author {
  String? created;
  String? email;
  String? id;
  bool? isAdmin;
  String? name;
  String? url;
  Null? userID;

  Author(
      {this.created,
      this.email,
      this.id,
      this.isAdmin,
      this.name,
      this.url,
      this.userID});

  Author.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    email = json['email'];
    id = json['id'];
    isAdmin = json['isAdmin'];
    name = json['name'];
    url = json['url'];
    userID = json['userID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.isAdmin != null) {
      data['isAdmin'] = this.isAdmin;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.userID != null) {
      data['userID'] = this.userID;
    }
    return data;
  }
}

class Board {
  String? created;
  String? id;
  String? name;
  int? postCount;
  String? url;

  Board({this.created, this.id, this.name, this.postCount, this.url});

  Board.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    id = json['id'];
    name = json['name'];
    postCount = json['postCount'];
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
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.postCount != null) {
      data['postCount'] = this.postCount;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Jira {
  List? linkedIssues;
  List? linkedIssueIDs;

  Jira({this.linkedIssues, this.linkedIssueIDs});

  Jira.fromJson(Map<String, dynamic> json) {
    if (json['linkedIssues'] != null) {
      linkedIssues = [];
      json['linkedIssues'].forEach((v) {
        linkedIssues?.add(v);
      });
    }
    if (json['linkedIssueIDs'] != null) {
      linkedIssueIDs = [];
      json['linkedIssueIDs'].forEach((v) {
        linkedIssueIDs?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.linkedIssues != null) {
      data['linkedIssues'] = this.linkedIssues?.map((v) => v).toList();
    }
    if (this.linkedIssueIDs != null) {
      data['linkedIssueIDs'] = this.linkedIssueIDs?.map((v) => v).toList();
    }
    return data;
  }
}
