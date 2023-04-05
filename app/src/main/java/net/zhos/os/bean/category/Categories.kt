package net.zhos.os.bean.category

/**
 * item data for get category.
 *
 * @see [net.zhos.os.network.ApiService.getCategories]
 */
data class Categories(
    val category_list: CategoryList = CategoryList()
)

data class CategoryList(
    val can_create_category: Boolean = false,
    val can_create_topic: Boolean = false,
    val categories: List<Category> = listOf()
)

data class Category(
    val can_edit: Boolean = false,
    val color: String = "",
    val default_list_filter: String = "",
    val default_top_period: String = "",
    val default_view: String = "",
    val description: String = "",
    val description_excerpt: String = "",
    val description_text: String = "",
    val has_children: Boolean = false,
    val id: Int = 0,
    val is_uncategorized: Boolean = false,
    val minimum_required_tags: Int = 0,
    val name: String = "",
    val navigate_to_first_post_after_read: Boolean = false,
    val notification_level: Int = 0,
    val num_featured_topics: Int = 0,
    val permission: Int = 0,
    val position: Int = 0,
    val post_count: Int = 0,
    val read_restricted: Boolean = false,
    val show_subcategory_list: Boolean = false,
    val slug: String = "",
    val sort_ascending: String = "",
    val sort_order: String = "",
    val subcategory_ids: List<Any> = listOf(),
    val subcategory_list: List<Any> = listOf(),
    val subcategory_list_style: String = "",
    val text_color: String = "",
    val topic_count: Int = 0,
    val topic_template: String = "",
    val topic_url: String = "",
    val topics_all_time: Int = 0,
    val topics_day: Int = 0,
    val topics_month: Int = 0,
    val topics_week: Int = 0,
    val topics_year: Int = 0,
    val uploaded_background: String = "",
    val uploaded_logo: String = "",
    val uploaded_logo_dark: String = ""
)