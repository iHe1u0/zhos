// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:json_annotation/json_annotation.dart';
part 'latest_topic_item.g.dart';

@JsonSerializable()
class LatestTopicItem extends Object {
  @JsonKey(name: 'users')
  List<Users> users;

  @JsonKey(name: 'primary_groups')
  List<dynamic> primary_groups;

  @JsonKey(name: 'flair_groups')
  List<dynamic> flair_groups;

  @JsonKey(name: 'topic_list')
  Topic_list topic_list;

  LatestTopicItem(
    this.users,
    this.primary_groups,
    this.flair_groups,
    this.topic_list,
  );

  factory LatestTopicItem.fromJson(Map<String, dynamic> srcJson) =>
      _$LatestTopicItemFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LatestTopicItemToJson(this);
}

@JsonSerializable()
class Users extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'username')
  String username;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'avatar_template')
  String avatar_template;

  @JsonKey(name: 'admin')
  bool admin;

  @JsonKey(name: 'trust_level')
  int trust_level;

  Users(
    this.id,
    this.username,
    this.name,
    this.avatar_template,
    this.admin,
    this.trust_level,
  );

  factory Users.fromJson(Map<String, dynamic> srcJson) =>
      _$UsersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable()
class Topic_list extends Object {
  @JsonKey(name: 'can_create_topic')
  bool can_create_topic;

  @JsonKey(name: 'more_topics_url')
  String more_topics_url;

  @JsonKey(name: 'per_page')
  int per_page;

  @JsonKey(name: 'top_tags')
  List<String> top_tags;

  @JsonKey(name: 'topics')
  List<Topics> topics;

  Topic_list(
    this.can_create_topic,
    this.more_topics_url,
    this.per_page,
    this.top_tags,
    this.topics,
  );

  factory Topic_list.fromJson(Map<String, dynamic> srcJson) =>
      _$Topic_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Topic_listToJson(this);
}

@JsonSerializable()
class Topics extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'fancy_title')
  String fancy_title;

  @JsonKey(name: 'slug')
  String slug;

  @JsonKey(name: 'posts_count')
  int posts_count;

  @JsonKey(name: 'reply_count')
  int reply_count;

  @JsonKey(name: 'highest_post_number')
  int highest_post_number;

  @JsonKey(name: 'image_url')
  String image_url;

  @JsonKey(name: 'created_at')
  String created_at;

  @JsonKey(name: 'last_posted_at')
  String last_posted_at;

  @JsonKey(name: 'bumped')
  bool bumped;

  @JsonKey(name: 'bumped_at')
  String bumped_at;

  @JsonKey(name: 'archetype')
  String archetype;

  @JsonKey(name: 'unseen')
  bool unseen;

  @JsonKey(name: 'pinned')
  bool pinned;

  @JsonKey(name: 'visible')
  bool visible;

  @JsonKey(name: 'closed')
  bool closed;

  @JsonKey(name: 'archived')
  bool archived;

  @JsonKey(name: 'tags')
  List<String> tags;

  @JsonKey(name: 'tags_descriptions')
  Tags_descriptions tags_descriptions;

  @JsonKey(name: 'views')
  int views;

  @JsonKey(name: 'like_count')
  int like_count;

  @JsonKey(name: 'has_summary')
  bool has_summary;

  @JsonKey(name: 'last_poster_username')
  String last_poster_username;

  @JsonKey(name: 'category_id')
  int category_id;

  @JsonKey(name: 'pinned_globally')
  bool pinned_globally;

  @JsonKey(name: 'posters')
  List<Posters> posters;

  Topics(
    this.id,
    this.title,
    this.fancy_title,
    this.slug,
    this.posts_count,
    this.reply_count,
    this.highest_post_number,
    this.image_url,
    this.created_at,
    this.last_posted_at,
    this.bumped,
    this.bumped_at,
    this.archetype,
    this.unseen,
    this.pinned,
    this.visible,
    this.closed,
    this.archived,
    this.tags,
    this.tags_descriptions,
    this.views,
    this.like_count,
    this.has_summary,
    this.last_poster_username,
    this.category_id,
    this.pinned_globally,
    this.posters,
  );

  factory Topics.fromJson(Map<String, dynamic> srcJson) =>
      _$TopicsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TopicsToJson(this);
}

@JsonSerializable()
class Tags_descriptions extends Object {
  @JsonKey(name: 'Manjaro')
  String Manjaro;

  Tags_descriptions(
    this.Manjaro,
  );

  factory Tags_descriptions.fromJson(Map<String, dynamic> srcJson) =>
      _$Tags_descriptionsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Tags_descriptionsToJson(this);
}

@JsonSerializable()
class Posters extends Object {
  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'user_id')
  int user_id;

  Posters(
    this.description,
    this.user_id,
  );

  factory Posters.fromJson(Map<String, dynamic> srcJson) =>
      _$PostersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PostersToJson(this);
}
