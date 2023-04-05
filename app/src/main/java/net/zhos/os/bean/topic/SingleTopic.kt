package net.zhos.os.bean.topic

data class SingleTopic(
    val actions_summary: List<ActionsSummary> = listOf(),
    val archetype: String = "",
    val archived: Boolean = false,
    val bookmarked: Boolean = false,
    val bookmarks: List<Any> = listOf(),
    val category_id: Int = 0,
    val chunk_size: Int = 0,
    val closed: Boolean = false,
    val created_at: String = "",
    val current_post_number: Int = 0,
    val deleted_at: String = "",
    val deleted_by: String = "",
    val details: Details = Details(),
    val draft: String = "",
    val draft_key: String = "",
    val draft_sequence: Int = 0,
    val fancy_title: String = "",
    val featured_link: String = "",
    val has_deleted: Boolean = false,
    val has_summary: Boolean = false,
    val highest_post_number: Int = 0,
    val id: Int = 0,
    val image_url: String = "",
    val last_posted_at: String = "",
    val like_count: Int = 0,
    val message_bus_last_id: Int = 0,
    val participant_count: Int = 0,
    val pinned: Boolean = false,
    val pinned_at: String = "",
    val pinned_globally: Boolean = false,
    val pinned_until: String = "",
    val post_stream: PostStream = PostStream(),
    val posts_count: Int = 0,
    val reply_count: Int = 0,
    val show_read_indicator: Boolean = false,
    val slow_mode_enabled_until: String = "",
    val slow_mode_seconds: Int = 0,
    val slug: String = "",
    val suggested_topics: List<SuggestedTopic> = listOf(),
    val tags: List<Any> = listOf(),
    val tags_descriptions: TagsDescriptionsX = TagsDescriptionsX(),
    val thumbnails: String = "",
    val timeline_lookup: List<Any> = listOf(),
    val title: String = "",
    val topic_timer: String = "",
    val unpinned: String = "",
    val user_id: Int = 0,
    val views: Int = 0,
    val visible: Boolean = false,
    val word_count: Int = 0
)

data class ActionsSummary(
    val can_act: Boolean = false,
    val count: Int = 0,
    val hidden: Boolean = false,
    val id: Int = 0
)

data class Details(
    val can_archive_topic: Boolean = false,
    val can_close_topic: Boolean = false,
    val can_convert_topic: Boolean = false,
    val can_create_post: Boolean = false,
    val can_delete: Boolean = false,
    val can_edit: Boolean = false,
    val can_edit_staff_notes: Boolean = false,
    val can_flag_topic: Boolean = false,
    val can_invite_to: Boolean = false,
    val can_invite_via_email: Boolean = false,
    val can_moderate_category: Boolean = false,
    val can_move_posts: Boolean = false,
    val can_pin_unpin_topic: Boolean = false,
    val can_remove_allowed_users: Boolean = false,
    val can_remove_self_id: Int = 0,
    val can_reply_as_new_topic: Boolean = false,
    val can_review_topic: Boolean = false,
    val can_split_merge_topic: Boolean = false,
    val can_toggle_topic_visibility: Boolean = false,
    val created_by: CreatedBy = CreatedBy(),
    val last_poster: LastPoster = LastPoster(),
    val notification_level: Int = 0,
    val participants: List<Participant> = listOf()
)

data class PostStream(
    val posts: List<Post> = listOf(),
    val stream: List<Any> = listOf()
)

data class SuggestedTopic(
    val archetype: String = "",
    val archived: Boolean = false,
    val bookmarked: String = "",
    val bumped: Boolean = false,
    val bumped_at: String = "",
    val category_id: Int = 0,
    val closed: Boolean = false,
    val created_at: String = "",
    val excerpt: String = "",
    val fancy_title: String = "",
    val featured_link: String = "",
    val highest_post_number: Int = 0,
    val id: Int = 0,
    val image_url: String = "",
    val last_posted_at: String = "",
    val like_count: Int = 0,
    val liked: String = "",
    val pinned: Boolean = false,
    val posters: List<SingleTopicPoster> = listOf(),
    val posts_count: Int = 0,
    val reply_count: Int = 0,
    val slug: String = "",
    val tags: List<Any> = listOf(),
    val tags_descriptions: TagsDescriptionsX? = TagsDescriptionsX(),
    val title: String = "",
    val unpinned: String = "",
    val unseen: Boolean = false,
    val views: Int = 0,
    val visible: Boolean = false
)

class TagsDescriptionsX

data class CreatedBy(
    val avatar_template: String = "",
    val id: Int = 0,
    val name: String = "",
    val username: String = ""
)

data class LastPoster(
    val avatar_template: String = "",
    val id: Int = 0,
    val name: String = "",
    val username: String = ""
)

data class Participant(
    val admin: Boolean = false,
    val avatar_template: String = "",
    val flair_bg_color: String = "",
    val flair_color: String = "",
    val flair_name: String = "",
    val flair_url: String = "",
    val id: Int = 0,
    val moderator: Boolean = false,
    val name: String = "",
    val post_count: Int = 0,
    val primary_group_name: String = "",
    val trust_level: Int = 0,
    val username: String = ""
)

data class Post(
    val actions_summary: List<ActionsSummaryX> = listOf(),
    val admin: Boolean = false,
    val avatar_template: String = "",
    val bookmarked: Boolean = false,
    val can_delete: Boolean = false,
    val can_edit: Boolean = false,
    val can_recover: Boolean = false,
    val can_view_edit_history: Boolean = false,
    val can_wiki: Boolean = false,
    val cooked: String = "",
    val created_at: String = "",
    val deleted_at: String = "",
    val display_username: String = "",
    val edit_reason: String = "",
    val flair_bg_color: String = "",
    val flair_color: String = "",
    val flair_name: String = "",
    val flair_url: String = "",
    val hidden: Boolean = false,
    val id: Int = 0,
    val incoming_link_count: Int = 0,
    val link_counts: List<LinkCount> = listOf(),
    val moderator: Boolean = false,
    val name: String = "",
    val post_number: Int = 0,
    val post_type: Int = 0,
    val primary_group_name: String = "",
    val quote_count: Int = 0,
    val read: Boolean = false,
    val readers_count: Int = 0,
    val reads: Int = 0,
    val reply_count: Int = 0,
    val reply_to_post_number: String = "",
    val reviewable_id: Int = 0,
    val reviewable_score_count: Int = 0,
    val reviewable_score_pending_count: Int = 0,
    val score: Int = 0,
    val staff: Boolean = false,
    val topic_id: Int = 0,
    val topic_slug: String = "",
    val trust_level: Int = 0,
    val updated_at: String = "",
    val user_deleted: Boolean = false,
    val user_id: Int = 0,
    val user_title: String = "",
    val username: String = "",
    val version: Int = 0,
    val wiki: Boolean = false,
    val yours: Boolean = false
)

data class ActionsSummaryX(
    val can_act: Boolean = false,
    val id: Int = 0
)

data class LinkCount(
    val clicks: Int = 0,
    val `internal`: Boolean = false,
    val reflection: Boolean = false,
    val title: String = "",
    val url: String = ""
)

data class SingleTopicPoster(
    val description: String = "",
    val extras: String = "",
    val user: SingleTopicUser = SingleTopicUser()
)

data class SingleTopicUser(
    val avatar_template: String = "",
    val id: Int = 0,
    val name: String = "",
    val username: String = ""
)