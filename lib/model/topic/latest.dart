// To parse this JSON data, do
//
//     final latestTopic = latestTopicFromJson(jsonString);

import 'dart:convert';

LatestTopic latestTopicFromJson(String str) =>
    LatestTopic.fromJson(json.decode(str));

String latestTopicToJson(LatestTopic data) => json.encode(data.toJson());

class LatestTopic {
  LatestTopic({
    this.users,
    this.primaryGroups,
    this.topicList,
  });

  List<User>? users;
  List<dynamic>? primaryGroups;
  TopicList? topicList;

  factory LatestTopic.fromJson(Map<String, dynamic> json) => LatestTopic(
        users: json["users"] == null
            ? []
            : List<User>.from(json["users"]!.map((x) => User.fromJson(x))),
        primaryGroups: json["primary_groups"] == null
            ? []
            : List<dynamic>.from(json["primary_groups"]!.map((x) => x)),
        topicList: json["topic_list"] == null
            ? null
            : TopicList.fromJson(json["topic_list"]),
      );

  Map<String, dynamic> toJson() => {
        "users": users == null
            ? []
            : List<dynamic>.from(users!.map((x) => x.toJson())),
        "primary_groups": primaryGroups == null
            ? []
            : List<dynamic>.from(primaryGroups!.map((x) => x)),
        "topic_list": topicList?.toJson(),
      };
}

class TopicList {
  TopicList({
    this.canCreateTopic,
    this.draft,
    this.draftKey,
    this.draftSequence,
    this.perPage,
    this.topics,
  });

  bool? canCreateTopic;
  String? draft;
  String? draftKey;
  int? draftSequence;
  int? perPage;
  List<Topic>? topics;

  factory TopicList.fromJson(Map<String, dynamic> json) => TopicList(
        canCreateTopic: json["can_create_topic"],
        draft: json["draft"],
        draftKey: json["draft_key"],
        draftSequence: json["draft_sequence"],
        perPage: json["per_page"],
        topics: json["topics"] == null
            ? []
            : List<Topic>.from(json["topics"]!.map((x) => Topic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "can_create_topic": canCreateTopic,
        "draft": draft,
        "draft_key": draftKey,
        "draft_sequence": draftSequence,
        "per_page": perPage,
        "topics": topics == null
            ? []
            : List<dynamic>.from(topics!.map((x) => x.toJson())),
      };
}

class Topic {
  Topic({
    required this.id,
    required this.title,
    this.fancyTitle,
    this.slug,
    this.postsCount,
    this.replyCount,
    this.highestPostNumber,
    this.imageUrl,
    required this.createdAt,
    this.lastPostedAt,
    this.bumped,
    this.bumpedAt,
    this.archetype,
    this.unseen,
    this.lastReadPostNumber,
    this.unreadPosts,
    this.pinned,
    this.unpinned,
    this.visible,
    this.closed,
    this.archived,
    this.notificationLevel,
    this.bookmarked,
    this.liked,
    this.views,
    this.likeCount,
    this.hasSummary,
    this.lastPosterUsername,
    this.categoryId,
    this.opLikeCount,
    this.pinnedGlobally,
    this.featuredLink,
    this.posters,
  });

  int id;
  String title;
  String? fancyTitle;
  String? slug;
  int? postsCount;
  int? replyCount;
  int? highestPostNumber;
  String? imageUrl;
  String createdAt;
  String? lastPostedAt;
  bool? bumped;
  String? bumpedAt;
  String? archetype;
  bool? unseen;
  int? lastReadPostNumber;
  int? unreadPosts;
  bool? pinned;
  String? unpinned;
  bool? visible;
  bool? closed;
  bool? archived;
  int? notificationLevel;
  bool? bookmarked;
  bool? liked;
  int? views;
  int? likeCount;
  bool? hasSummary;
  String? lastPosterUsername;
  int? categoryId;
  int? opLikeCount;
  bool? pinnedGlobally;
  String? featuredLink;
  List<Poster>? posters;

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        id: json["id"],
        title: json["title"],
        fancyTitle: json["fancy_title"],
        slug: json["slug"],
        postsCount: json["posts_count"],
        replyCount: json["reply_count"],
        highestPostNumber: json["highest_post_number"],
        imageUrl: json["image_url"],
        createdAt: json["created_at"],
        lastPostedAt: json["last_posted_at"],
        bumped: json["bumped"],
        bumpedAt: json["bumped_at"],
        archetype: json["archetype"],
        unseen: json["unseen"],
        lastReadPostNumber: json["last_read_post_number"],
        unreadPosts: json["unread_posts"],
        pinned: json["pinned"],
        unpinned: json["unpinned"],
        visible: json["visible"],
        closed: json["closed"],
        archived: json["archived"],
        notificationLevel: json["notification_level"],
        bookmarked: json["bookmarked"],
        liked: json["liked"],
        views: json["views"],
        likeCount: json["like_count"],
        hasSummary: json["has_summary"],
        lastPosterUsername: json["last_poster_username"],
        categoryId: json["category_id"],
        opLikeCount: json["op_like_count"],
        pinnedGlobally: json["pinned_globally"],
        featuredLink: json["featured_link"],
        posters: json["posters"] == null
            ? []
            : List<Poster>.from(
                json["posters"]!.map((x) => Poster.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "fancy_title": fancyTitle,
        "slug": slug,
        "posts_count": postsCount,
        "reply_count": replyCount,
        "highest_post_number": highestPostNumber,
        "image_url": imageUrl,
        "created_at": createdAt,
        "last_posted_at": lastPostedAt,
        "bumped": bumped,
        "bumped_at": bumpedAt,
        "archetype": archetype,
        "unseen": unseen,
        "last_read_post_number": lastReadPostNumber,
        "unread_posts": unreadPosts,
        "pinned": pinned,
        "unpinned": unpinned,
        "visible": visible,
        "closed": closed,
        "archived": archived,
        "notification_level": notificationLevel,
        "bookmarked": bookmarked,
        "liked": liked,
        "views": views,
        "like_count": likeCount,
        "has_summary": hasSummary,
        "last_poster_username": lastPosterUsername,
        "category_id": categoryId,
        "op_like_count": opLikeCount,
        "pinned_globally": pinnedGlobally,
        "featured_link": featuredLink,
        "posters": posters == null
            ? []
            : List<dynamic>.from(posters!.map((x) => x.toJson())),
      };
}

class Poster {
  Poster({
    this.extras,
    this.description,
    this.userId,
    this.primaryGroupId,
  });

  String? extras;
  String? description;
  int? userId;
  String? primaryGroupId;

  factory Poster.fromJson(Map<String, dynamic> json) => Poster(
        extras: json["extras"],
        description: json["description"],
        userId: json["user_id"],
        primaryGroupId: json["primary_group_id"],
      );

  Map<String, dynamic> toJson() => {
        "extras": extras,
        "description": description,
        "user_id": userId,
        "primary_group_id": primaryGroupId,
      };
}

class User {
  User({
    this.id,
    this.username,
    this.name,
    this.avatarTemplate,
  });

  int? id;
  String? username;
  String? name;
  String? avatarTemplate;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        name: json["name"],
        avatarTemplate: json["avatar_template"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "name": name,
        "avatar_template": avatarTemplate,
      };
}
