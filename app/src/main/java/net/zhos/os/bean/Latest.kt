package net.zhos.os.bean

data class Latest(
    val flair_groups: List<Any> = listOf(),
    val primary_groups: List<Any> = listOf(),
    val topic_list: TopicList = TopicList(),
    val users: List<User> = listOf()
)

data class TopicList(
    val can_create_topic: Boolean = false,
    val more_topics_url: String = "",
    val per_page: Int = 0,
    val top_tags: List<String> = listOf(),
    val topics: List<Topic> = listOf()
)

data class User(
    val admin: Boolean? = null,
    val avatar_template: String = "",
    val flair_name: Any? = null,
    val id: Int = 0,
    val moderator: Boolean? = null,
    val name: String = "",
    val trust_level: Int = 0,
    val username: String = ""
)

data class Topic(
    val archetype: String = "",
    val archived: Boolean = false,
    val bookmarked: Any? = null,
    val bumped: Boolean = false,
    val bumped_at: String = "",
    val category_id: Int = 0,
    val closed: Boolean = false,
    val created_at: String = "",
    val excerpt: String? = null,
    val fancy_title: String = "",
    val featured_link: String? = null,
    val featured_link_root_domain: String? = null,
    val has_summary: Boolean = false,
    val highest_post_number: Int = 0,
    val id: Int = 0,
    val image_url: String? = null,
    val last_posted_at: String = "",
    val last_poster_username: String = "",
    val like_count: Int = 0,
    val liked: Any? = null,
    val pinned: Boolean = false,
    val pinned_globally: Boolean = false,
    val posters: List<Poster> = listOf(),
    val posts_count: Int = 0,
    val reply_count: Int = 0,
    val slug: String = "",
    val tags: List<String> = listOf(),
    val tags_descriptions: TagsDescriptions? = null,
    val title: String = "",
    val unpinned: Any? = null,
    val unseen: Boolean = false,
    val views: Int = 0,
    val visible: Boolean = false
)

data class Poster(
    val description: String = "",
    val extras: String? = null,
    val flair_group_id: Any? = null,
    val primary_group_id: Any? = null,
    val user_id: Int = 0
)

data class TagsDescriptions(var data: Any)