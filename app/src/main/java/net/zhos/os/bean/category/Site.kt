package net.zhos.os.bean.category

data class SiteInfo(
    val anonymous_top_menu_items: List<Any> = listOf(),
    val archetypes: List<Archetype> = listOf(),
    val auth_providers: List<Any> = listOf(),
    val can_associate_groups: Boolean = false,
    val can_create_tag: Boolean = false,
    val can_tag_pms: Boolean = false,
    val can_tag_topics: Boolean = false,
    val categories: List<SiteInfoCategory> = listOf(),
    val censored_regexp: List<CensoredRegexp> = listOf(),
    val custom_emoji_translation: CustomEmojiTranslation = CustomEmojiTranslation(),
    val default_archetype: String = "",
    val default_dark_color_scheme: DefaultDarkColorScheme = DefaultDarkColorScheme(),
    val displayed_about_plugin_stat_groups: List<Any> = listOf(),
    val filters: List<Any> = listOf(),
    val groups: List<Group> = listOf(),
    val hashtag_configurations: HashtagConfigurations = HashtagConfigurations(),
    val hashtag_icons: List<Any> = listOf(),
    val markdown_additional_options: MarkdownAdditionalOptions = MarkdownAdditionalOptions(),
    val notification_types: NotificationTypes = NotificationTypes(),
    val periods: List<Any> = listOf(),
    val post_action_types: List<PostActionType> = listOf(),
    val post_types: PostTypes = PostTypes(),
    val show_welcome_topic_banner: Boolean = false,
    val tags_filter_regexp: String = "",
    val top_menu_items: List<Any> = listOf(),
    val top_tags: List<Any> = listOf(),
    val topic_featured_link_allowed_category_ids: List<Any> = listOf(),
    val topic_flag_types: List<TopicFlagType> = listOf(),
    val trust_levels: TrustLevels = TrustLevels(),
    val uncategorized_category_id: Int = 0,
    val user_color_schemes: List<UserColorScheme> = listOf(),
    val user_field_max_length: Int = 0,
    val user_fields: List<Any> = listOf(),
    val user_themes: List<UserTheme> = listOf(),
    val watched_words_link: String = "",
    val watched_words_replace: String = "",
    val whispers_allowed_groups_names: List<Any> = listOf(),
    val wizard_required: Boolean = false
)

data class Archetype(
    val id: String = "",
    val name: String = "",
    val options: List<Any> = listOf()
)

data class SiteInfoCategory(
    val allow_global_tags: Boolean = false,
    val allowed_tag_groups: List<Any> = listOf(),
    val allowed_tags: List<Any> = listOf(),
    val can_edit: Boolean = false,
    val color: String = "",
    val custom_fields: CustomFields? = null,
    val default_list_filter: String = "",
    val default_top_period: String = "",
    val default_view: String = "",
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
    val parent_category_id: Int = 0,
    val permission: Int = 0,
    val position: Int = 0,
    val post_count: Int = 0,
    val read_only_banner: String = "",
    val read_restricted: Boolean = false,
    val required_tag_groups: List<RequiredTagGroup> = listOf(),
    val show_subcategory_list: Boolean = false,
    val slug: String = "",
    val sort_ascending: String = "",
    val sort_order: String = "",
    val subcategory_list_style: String = "",
    val text_color: String = "",
    val topic_count: Int = 0,
    val topic_template: String = "",
    val topic_url: String = "",
    val uploaded_background: String = "",
    val uploaded_logo: String = "",
    val uploaded_logo_dark: String = ""
)

class CensoredRegexp

class CustomEmojiTranslation

class DefaultDarkColorScheme

data class Group(
    val flair_bg_color: String = "",
    val flair_color: String = "",
    val flair_url: String = "",
    val id: Int = 0,
    val name: String = ""
)

class HashtagConfigurations

class MarkdownAdditionalOptions

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
    val id: Int = 0,
    val is_custom_flag: Boolean = false,
    val is_flag: Boolean = false,
    val name: String = "",
    val name_key: String = "",
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
    val id: Int = 0,
    val is_custom_flag: Boolean = false,
    val is_flag: Boolean = false,
    val name: String = "",
    val name_key: String = "",
    val short_description: String = ""
)

data class TrustLevels(
    val basic: Int = 0,
    val leader: Int = 0,
    val member: Int = 0,
    val newuser: Int = 0,
    val regular: Int = 0
)

data class UserColorScheme(
    val id: Int = 0,
    val is_dark: Boolean = false,
    val name: String = ""
)

data class UserTheme(
    val color_scheme_id: Int = 0,
    val default: Boolean = false,
    val name: String = "",
    val theme_id: Int = 0
)

class CustomFields

data class RequiredTagGroup(
    val min_count: Int = 0,
    val name: String = ""
)