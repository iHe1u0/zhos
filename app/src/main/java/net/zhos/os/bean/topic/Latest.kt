package net.zhos.os.bean.topic

/**
 * home page topic,which will get 30 topics.
 *
 * @see [net.zhos.os.network.ApiService.getLatestTopic]
 */
data class LatestTopic(
    val primary_groups: List<Any> = listOf(),
    val topic_list: TopicList = TopicList(),
    val users: List<User> = listOf()
)

data class TopicList(
    val can_create_topic: Boolean = false,
    val draft: String = "",
    val draft_key: String = "",
    val draft_sequence: Int = 0,
    val per_page: Int = 0,
    val topics: List<Topic> = listOf()
)

data class User(
    val avatar_template: String = "",
    val id: Int = 0,
    val name: String = "",
    val username: String = ""
)

data class Topic(
    val archetype: String = "",
    val archived: Boolean = false,
    val bookmarked: Boolean = false,
    val bumped: Boolean = false,
    val bumped_at: String = "",
    val category_id: Int = 0,
    val closed: Boolean = false,
    val created_at: String = "",
    val fancy_title: String = "",
    val featured_link: String = "",
    val has_summary: Boolean = false,
    val highest_post_number: Int = 0,
    val id: Int = 0,
    val image_url: String = "",
    val last_posted_at: String = "",
    val last_poster_username: String = "",
    val last_read_post_number: Int = 0,
    val like_count: Int = 0,
    val liked: Boolean = false,
    val notification_level: Int = 0,
    val op_like_count: Int = 0,
    val pinned: Boolean = false,
    val pinned_globally: Boolean = false,
    val posters: List<Poster> = listOf(),
    val posts_count: Int = 0,
    val reply_count: Int = 0,
    val slug: String = "",
    val title: String = "",
    val unpinned: String = "",
    val unread_posts: Int = 0,
    val unseen: Boolean = false,
    val views: Int = 0,
    val visible: Boolean = false
)

data class Poster(
    val description: String = "",
    val extras: String = "",
    val primary_group_id: String = "",
    val user_id: Int = 0
)