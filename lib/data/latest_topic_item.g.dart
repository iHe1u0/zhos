// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_topic_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestTopicItem _$LatestTopicItemFromJson(Map<String, dynamic> json) =>
    LatestTopicItem(
      (json['users'] as List<dynamic>)
          .map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['primary_groups'] as List<dynamic>,
      json['flair_groups'] as List<dynamic>,
      Topic_list.fromJson(json['topic_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LatestTopicItemToJson(LatestTopicItem instance) =>
    <String, dynamic>{
      'users': instance.users,
      'primary_groups': instance.primary_groups,
      'flair_groups': instance.flair_groups,
      'topic_list': instance.topic_list,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      json['id'] as int,
      json['username'] as String,
      json['name'] as String,
      json['avatar_template'] as String,
      json['admin'] as bool,
      json['trust_level'] as int,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'avatar_template': instance.avatar_template,
      'admin': instance.admin,
      'trust_level': instance.trust_level,
    };

Topic_list _$Topic_listFromJson(Map<String, dynamic> json) => Topic_list(
      json['can_create_topic'] as bool,
      json['more_topics_url'] as String,
      json['per_page'] as int,
      (json['top_tags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['topics'] as List<dynamic>)
          .map((e) => Topics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Topic_listToJson(Topic_list instance) =>
    <String, dynamic>{
      'can_create_topic': instance.can_create_topic,
      'more_topics_url': instance.more_topics_url,
      'per_page': instance.per_page,
      'top_tags': instance.top_tags,
      'topics': instance.topics,
    };

Topics _$TopicsFromJson(Map<String, dynamic> json) => Topics(
      json['id'] as int,
      json['title'] as String,
      json['fancy_title'] as String,
      json['slug'] as String,
      json['posts_count'] as int,
      json['reply_count'] as int,
      json['highest_post_number'] as int,
      json['image_url'] as String,
      json['created_at'] as String,
      json['last_posted_at'] as String,
      json['bumped'] as bool,
      json['bumped_at'] as String,
      json['archetype'] as String,
      json['unseen'] as bool,
      json['pinned'] as bool,
      json['visible'] as bool,
      json['closed'] as bool,
      json['archived'] as bool,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      Tags_descriptions.fromJson(
          json['tags_descriptions'] as Map<String, dynamic>),
      json['views'] as int,
      json['like_count'] as int,
      json['has_summary'] as bool,
      json['last_poster_username'] as String,
      json['category_id'] as int,
      json['pinned_globally'] as bool,
      (json['posters'] as List<dynamic>)
          .map((e) => Posters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopicsToJson(Topics instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'fancy_title': instance.fancy_title,
      'slug': instance.slug,
      'posts_count': instance.posts_count,
      'reply_count': instance.reply_count,
      'highest_post_number': instance.highest_post_number,
      'image_url': instance.image_url,
      'created_at': instance.created_at,
      'last_posted_at': instance.last_posted_at,
      'bumped': instance.bumped,
      'bumped_at': instance.bumped_at,
      'archetype': instance.archetype,
      'unseen': instance.unseen,
      'pinned': instance.pinned,
      'visible': instance.visible,
      'closed': instance.closed,
      'archived': instance.archived,
      'tags': instance.tags,
      'tags_descriptions': instance.tags_descriptions,
      'views': instance.views,
      'like_count': instance.like_count,
      'has_summary': instance.has_summary,
      'last_poster_username': instance.last_poster_username,
      'category_id': instance.category_id,
      'pinned_globally': instance.pinned_globally,
      'posters': instance.posters,
    };

Tags_descriptions _$Tags_descriptionsFromJson(Map<String, dynamic> json) =>
    Tags_descriptions(
      json['Manjaro'] as String,
    );

Map<String, dynamic> _$Tags_descriptionsToJson(Tags_descriptions instance) =>
    <String, dynamic>{
      'Manjaro': instance.Manjaro,
    };

Posters _$PostersFromJson(Map<String, dynamic> json) => Posters(
      json['description'] as String,
      json['user_id'] as int,
    );

Map<String, dynamic> _$PostersToJson(Posters instance) => <String, dynamic>{
      'description': instance.description,
      'user_id': instance.user_id,
    };
