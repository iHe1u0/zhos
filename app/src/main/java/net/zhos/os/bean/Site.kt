package net.zhos.os.bean


data class Site(
    val anonymous_default_sidebar_tags: List<String> = listOf(),
    val anonymous_top_menu_items: List<String> = listOf(),
    val archetypes: List<Archetype> = listOf(),
    val auth_providers: List<AuthProvider> = listOf(),
    val can_create_tag: Boolean = false,
    val can_tag_pms: Boolean = false,
    val can_tag_topics: Boolean = false,
    val categories: List<Category> = listOf(),
    val censored_regexp: List<Any> = listOf(),
    val custom_emoji_translation: CustomEmojiTranslation = CustomEmojiTranslation(),
    val default_archetype: String = "",
    val default_dark_color_scheme: Any? = Any(),
    val displayed_about_plugin_stat_groups: List<String> = listOf(),
    val filters: List<String> = listOf(),
    val groups: List<Any> = listOf(),
    val hashtag_configurations: HashtagConfigurations = HashtagConfigurations(),
    val hashtag_icons: List<String> = listOf(),
    val markdown_additional_options: MarkdownAdditionalOptions = MarkdownAdditionalOptions(),
    val notification_types: NotificationTypes = NotificationTypes(),
    val periods: List<String> = listOf(),
    val post_action_types: List<PostActionType> = listOf(),
    val post_types: PostTypes = PostTypes(),
    val show_welcome_topic_banner: Boolean = false,
    val tags_filter_regexp: String = "",
    val top_menu_items: List<String> = listOf(),
    val top_tags: List<String> = listOf(),
    val topic_featured_link_allowed_category_ids: List<Int> = listOf(),
    val topic_flag_types: List<TopicFlagType> = listOf(),
    val trust_levels: TrustLevels = TrustLevels(),
    val uncategorized_category_id: Int = 0,
    val user_color_schemes: List<Any> = listOf(),
    val user_field_max_length: Int = 0,
    val user_fields: List<UserField> = listOf(),
    val user_themes: List<UserTheme> = listOf(),
    val user_tips: UserTips = UserTips(),
    val watched_words_link: Any? = Any(),
    val watched_words_replace: Any? = Any()
)

data class Archetype(
    val id: String = "",
    val name: String = "",
    val options: List<Any> = listOf()
)

data class AuthProvider(
    val can_connect: Boolean = false,
    val can_revoke: Boolean = false,
    val custom_url: Any? = null,
    val frame_height: Any? = null,
    val frame_width: Any? = null,
    val icon: String = "",
    val name: String = "",
    val pretty_name_override: Any? = null,
    val title_override: Any? = null
)

data class Category(
    val allow_global_tags: Boolean = false,
    val allowed_tag_groups: List<Any> = listOf(),
    val allowed_tags: List<String> = listOf(),
    val can_edit: Boolean = false,
    val color: String = "",
    val custom_fields: CustomFields = CustomFields(),
    val default_list_filter: String = "",
    val default_top_period: String = "",
    val default_view: String? = null,
    val description: String = "",
    val description_excerpt: String = "",
    val description_text: String = "",
    val form_template_ids: List<Any> = listOf(),
    val has_children: Boolean = false,
    val id: Int = 0,
    val minimum_required_tags: Int = 0,
    val name: String = "",
    val navigate_to_first_post_after_read: Boolean = false,
    val notification_level: Int = 0,
    val num_featured_topics: Int = 0,
    val permission: Any? = null,
    val position: Int = 0,
    val post_count: Int = 0,
    val read_only_banner: Any? = null,
    val read_restricted: Boolean = false,
    val required_tag_groups: List<Any> = listOf(),
    val show_subcategory_list: Boolean = false,
    val slug: String = "",
    val sort_ascending: Any? = null,
    val sort_order: String? = null,
    val subcategory_list_style: String = "",
    val text_color: String = "",
    val topic_count: Int = 0,
    val topic_template: String? = null,
    val topic_url: String = "",
    val uploaded_background: Any? = null,
    val uploaded_logo: Any? = null,
    val uploaded_logo_dark: Any? = null
)

class CustomEmojiTranslation

data class HashtagConfigurations(
    val chat_composer: List<String> = listOf(),
    val topic_composer: List<String> = listOf()
)

data class MarkdownAdditionalOptions(
    val chat: Chat = Chat()
)

data class NotificationTypes(
    val assigned: Int = 0,
    val bookmark_reminder: Int = 0,
    val chat_group_mention: Int = 0,
    val chat_invitation: Int = 0,
    val chat_mention: Int = 0,
    val chat_message: Int = 0,
    val chat_quoted: Int = 0,
    val circles_activity: Int = 0,
    val code_review_commit_approved: Int = 0,
    val custom: Int = 0,
    val edited: Int = 0,
    val event_invitation: Int = 0,
    val event_reminder: Int = 0,
    val following: Int = 0,
    val following_created_topic: Int = 0,
    val following_replied: Int = 0,
    val granted_badge: Int = 0,
    val group_mentioned: Int = 0,
    val group_message_summary: Int = 0,
    val invited_to_private_message: Int = 0,
    val invited_to_topic: Int = 0,
    val invitee_accepted: Int = 0,
    val liked: Int = 0,
    val liked_consolidated: Int = 0,
    val linked: Int = 0,
    val membership_request_accepted: Int = 0,
    val membership_request_consolidated: Int = 0,
    val mentioned: Int = 0,
    val moved_post: Int = 0,
    val new_features: Int = 0,
    val post_approved: Int = 0,
    val posted: Int = 0,
    val private_message: Int = 0,
    val question_answer_user_commented: Int = 0,
    val quoted: Int = 0,
    val reaction: Int = 0,
    val replied: Int = 0,
    val topic_reminder: Int = 0,
    val votes_released: Int = 0,
    val watching_category_or_tag: Int = 0,
    val watching_first_post: Int = 0
)

data class PostActionType(
    val description: String = "",
    val id: Int? = null,
    val is_custom_flag: Boolean = false,
    val is_flag: Boolean = false,
    val name: String = "",
    val name_key: String? = null,
    val short_description: String = ""
)

data class PostTypes(
    val moderator_action: Int = 0,
    val regular: Int = 0,
    val small_action: Int = 0,
    val whisper: Int = 0
)

data class TopicFlagType(
    val description: String = "",
    val id: Int? = null,
    val is_custom_flag: Boolean = false,
    val is_flag: Boolean = false,
    val name: String = "",
    val name_key: String? = null,
    val short_description: String = ""
)

data class TrustLevels(
    val basic: Int = 0,
    val leader: Int = 0,
    val member: Int = 0,
    val newuser: Int = 0,
    val regular: Int = 0
)

data class UserField(
    val description: String = "",
    val editable: Boolean = false,
    val field_type: String = "",
    val id: Int = 0,
    val name: String = "",
    val position: Int = 0,
    val required: Boolean = false,
    val searchable: Boolean = false,
    val show_on_profile: Boolean = false,
    val show_on_user_card: Boolean = false
)

data class UserTheme(
    val color_scheme_id: Int? = null,
    val default: Boolean = false,
    val name: String = "",
    val theme_id: Int = 0
)

data class UserTips(
    val first_notification: Int = 0,
    val post_menu: Int = 0,
    val suggested_topics: Int = 0,
    val topic_notification_levels: Int = 0,
    val topic_timeline: Int = 0
)

data class CustomFields(
    val has_chat_enabled: Any? = null
)

data class Chat(
    val hashtag_configurations: HashtagConfigurations = HashtagConfigurations(),
    val limited_pretty_text_features: List<String> = listOf(),
    val limited_pretty_text_markdown_rules: List<String> = listOf()
)
