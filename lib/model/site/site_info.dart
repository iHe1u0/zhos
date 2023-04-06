// To parse this JSON data, do
//
//     final siteInfo = siteInfoFromJson(jsonString);

import 'dart:convert';

SiteInfo siteInfoFromJson(String str) => SiteInfo.fromJson(json.decode(str));

String siteInfoToJson(SiteInfo data) => json.encode(data.toJson());

class SiteInfo {
    SiteInfo({
        this.defaultArchetype,
        this.notificationTypes,
        this.postTypes,
        this.trustLevels,
        this.groups,
        this.filters,
        this.periods,
        this.topMenuItems,
        this.anonymousTopMenuItems,
        this.uncategorizedCategoryId,
        this.userFieldMaxLength,
        this.postActionTypes,
        this.topicFlagTypes,
        this.canCreateTag,
        this.canTagTopics,
        this.canTagPms,
        this.tagsFilterRegexp,
        this.topTags,
        this.wizardRequired,
        this.canAssociateGroups,
        this.topicFeaturedLinkAllowedCategoryIds,
        this.userThemes,
        this.userColorSchemes,
        this.defaultDarkColorScheme,
        this.censoredRegexp,
        this.customEmojiTranslation,
        this.watchedWordsReplace,
        this.watchedWordsLink,
        this.markdownAdditionalOptions,
        this.hashtagConfigurations,
        this.hashtagIcons,
        this.displayedAboutPluginStatGroups,
        this.categories,
        this.showWelcomeTopicBanner,
        this.archetypes,
        this.userFields,
        this.authProviders,
        this.whispersAllowedGroupsNames,
    });

    String? defaultArchetype;
    Map<String, int>? notificationTypes;
    PostTypes? postTypes;
    TrustLevels? trustLevels;
    List<Group>? groups;
    List<dynamic>? filters;
    List<dynamic>? periods;
    List<dynamic>? topMenuItems;
    List<dynamic>? anonymousTopMenuItems;
    int? uncategorizedCategoryId;
    int? userFieldMaxLength;
    List<Type>? postActionTypes;
    List<Type>? topicFlagTypes;
    bool? canCreateTag;
    bool? canTagTopics;
    bool? canTagPms;
    String? tagsFilterRegexp;
    List<dynamic>? topTags;
    bool? wizardRequired;
    bool? canAssociateGroups;
    List<dynamic>? topicFeaturedLinkAllowedCategoryIds;
    List<UserTheme>? userThemes;
    List<UserColorScheme>? userColorSchemes;
    CustomEmojiTranslation? defaultDarkColorScheme;
    List<CustomEmojiTranslation>? censoredRegexp;
    CustomEmojiTranslation? customEmojiTranslation;
    String? watchedWordsReplace;
    String? watchedWordsLink;
    CustomEmojiTranslation? markdownAdditionalOptions;
    CustomEmojiTranslation? hashtagConfigurations;
    List<dynamic>? hashtagIcons;
    List<dynamic>? displayedAboutPluginStatGroups;
    List<Category>? categories;
    bool? showWelcomeTopicBanner;
    List<Archetype>? archetypes;
    List<dynamic>? userFields;
    List<dynamic>? authProviders;
    List<dynamic>? whispersAllowedGroupsNames;

    factory SiteInfo.fromJson(Map<String, dynamic> json) => SiteInfo(
        defaultArchetype: json["default_archetype"],
        notificationTypes: Map.from(json["notification_types"]!).map((k, v) => MapEntry<String, int>(k, v)),
        postTypes: json["post_types"] == null ? null : PostTypes.fromJson(json["post_types"]),
        trustLevels: json["trust_levels"] == null ? null : TrustLevels.fromJson(json["trust_levels"]),
        groups: json["groups"] == null ? [] : List<Group>.from(json["groups"]!.map((x) => Group.fromJson(x))),
        filters: json["filters"] == null ? [] : List<dynamic>.from(json["filters"]!.map((x) => x)),
        periods: json["periods"] == null ? [] : List<dynamic>.from(json["periods"]!.map((x) => x)),
        topMenuItems: json["top_menu_items"] == null ? [] : List<dynamic>.from(json["top_menu_items"]!.map((x) => x)),
        anonymousTopMenuItems: json["anonymous_top_menu_items"] == null ? [] : List<dynamic>.from(json["anonymous_top_menu_items"]!.map((x) => x)),
        uncategorizedCategoryId: json["uncategorized_category_id"],
        userFieldMaxLength: json["user_field_max_length"],
        postActionTypes: json["post_action_types"] == null ? [] : List<Type>.from(json["post_action_types"]!.map((x) => Type.fromJson(x))),
        topicFlagTypes: json["topic_flag_types"] == null ? [] : List<Type>.from(json["topic_flag_types"]!.map((x) => Type.fromJson(x))),
        canCreateTag: json["can_create_tag"],
        canTagTopics: json["can_tag_topics"],
        canTagPms: json["can_tag_pms"],
        tagsFilterRegexp: json["tags_filter_regexp"],
        topTags: json["top_tags"] == null ? [] : List<dynamic>.from(json["top_tags"]!.map((x) => x)),
        wizardRequired: json["wizard_required"],
        canAssociateGroups: json["can_associate_groups"],
        topicFeaturedLinkAllowedCategoryIds: json["topic_featured_link_allowed_category_ids"] == null ? [] : List<dynamic>.from(json["topic_featured_link_allowed_category_ids"]!.map((x) => x)),
        userThemes: json["user_themes"] == null ? [] : List<UserTheme>.from(json["user_themes"]!.map((x) => UserTheme.fromJson(x))),
        userColorSchemes: json["user_color_schemes"] == null ? [] : List<UserColorScheme>.from(json["user_color_schemes"]!.map((x) => UserColorScheme.fromJson(x))),
        defaultDarkColorScheme: json["default_dark_color_scheme"] == null ? null : CustomEmojiTranslation.fromJson(json["default_dark_color_scheme"]),
        censoredRegexp: json["censored_regexp"] == null ? [] : List<CustomEmojiTranslation>.from(json["censored_regexp"]!.map((x) => CustomEmojiTranslation.fromJson(x))),
        customEmojiTranslation: json["custom_emoji_translation"] == null ? null : CustomEmojiTranslation.fromJson(json["custom_emoji_translation"]),
        watchedWordsReplace: json["watched_words_replace"],
        watchedWordsLink: json["watched_words_link"],
        markdownAdditionalOptions: json["markdown_additional_options"] == null ? null : CustomEmojiTranslation.fromJson(json["markdown_additional_options"]),
        hashtagConfigurations: json["hashtag_configurations"] == null ? null : CustomEmojiTranslation.fromJson(json["hashtag_configurations"]),
        hashtagIcons: json["hashtag_icons"] == null ? [] : List<dynamic>.from(json["hashtag_icons"]!.map((x) => x)),
        displayedAboutPluginStatGroups: json["displayed_about_plugin_stat_groups"] == null ? [] : List<dynamic>.from(json["displayed_about_plugin_stat_groups"]!.map((x) => x)),
        categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
        showWelcomeTopicBanner: json["show_welcome_topic_banner"],
        archetypes: json["archetypes"] == null ? [] : List<Archetype>.from(json["archetypes"]!.map((x) => Archetype.fromJson(x))),
        userFields: json["user_fields"] == null ? [] : List<dynamic>.from(json["user_fields"]!.map((x) => x)),
        authProviders: json["auth_providers"] == null ? [] : List<dynamic>.from(json["auth_providers"]!.map((x) => x)),
        whispersAllowedGroupsNames: json["whispers_allowed_groups_names"] == null ? [] : List<dynamic>.from(json["whispers_allowed_groups_names"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "default_archetype": defaultArchetype,
        "notification_types": Map.from(notificationTypes!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "post_types": postTypes?.toJson(),
        "trust_levels": trustLevels?.toJson(),
        "groups": groups == null ? [] : List<dynamic>.from(groups!.map((x) => x.toJson())),
        "filters": filters == null ? [] : List<dynamic>.from(filters!.map((x) => x)),
        "periods": periods == null ? [] : List<dynamic>.from(periods!.map((x) => x)),
        "top_menu_items": topMenuItems == null ? [] : List<dynamic>.from(topMenuItems!.map((x) => x)),
        "anonymous_top_menu_items": anonymousTopMenuItems == null ? [] : List<dynamic>.from(anonymousTopMenuItems!.map((x) => x)),
        "uncategorized_category_id": uncategorizedCategoryId,
        "user_field_max_length": userFieldMaxLength,
        "post_action_types": postActionTypes == null ? [] : List<dynamic>.from(postActionTypes!.map((x) => x.toJson())),
        "topic_flag_types": topicFlagTypes == null ? [] : List<dynamic>.from(topicFlagTypes!.map((x) => x.toJson())),
        "can_create_tag": canCreateTag,
        "can_tag_topics": canTagTopics,
        "can_tag_pms": canTagPms,
        "tags_filter_regexp": tagsFilterRegexp,
        "top_tags": topTags == null ? [] : List<dynamic>.from(topTags!.map((x) => x)),
        "wizard_required": wizardRequired,
        "can_associate_groups": canAssociateGroups,
        "topic_featured_link_allowed_category_ids": topicFeaturedLinkAllowedCategoryIds == null ? [] : List<dynamic>.from(topicFeaturedLinkAllowedCategoryIds!.map((x) => x)),
        "user_themes": userThemes == null ? [] : List<dynamic>.from(userThemes!.map((x) => x.toJson())),
        "user_color_schemes": userColorSchemes == null ? [] : List<dynamic>.from(userColorSchemes!.map((x) => x.toJson())),
        "default_dark_color_scheme": defaultDarkColorScheme?.toJson(),
        "censored_regexp": censoredRegexp == null ? [] : List<dynamic>.from(censoredRegexp!.map((x) => x.toJson())),
        "custom_emoji_translation": customEmojiTranslation?.toJson(),
        "watched_words_replace": watchedWordsReplace,
        "watched_words_link": watchedWordsLink,
        "markdown_additional_options": markdownAdditionalOptions?.toJson(),
        "hashtag_configurations": hashtagConfigurations?.toJson(),
        "hashtag_icons": hashtagIcons == null ? [] : List<dynamic>.from(hashtagIcons!.map((x) => x)),
        "displayed_about_plugin_stat_groups": displayedAboutPluginStatGroups == null ? [] : List<dynamic>.from(displayedAboutPluginStatGroups!.map((x) => x)),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "show_welcome_topic_banner": showWelcomeTopicBanner,
        "archetypes": archetypes == null ? [] : List<dynamic>.from(archetypes!.map((x) => x.toJson())),
        "user_fields": userFields == null ? [] : List<dynamic>.from(userFields!.map((x) => x)),
        "auth_providers": authProviders == null ? [] : List<dynamic>.from(authProviders!.map((x) => x)),
        "whispers_allowed_groups_names": whispersAllowedGroupsNames == null ? [] : List<dynamic>.from(whispersAllowedGroupsNames!.map((x) => x)),
    };
}

class Archetype {
    Archetype({
        this.id,
        this.name,
        this.options,
    });

    String? id;
    String? name;
    List<dynamic>? options;

    factory Archetype.fromJson(Map<String, dynamic> json) => Archetype(
        id: json["id"],
        name: json["name"],
        options: json["options"] == null ? [] : List<dynamic>.from(json["options"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
    };
}

class Category {
    Category({
        this.id,
        this.name,
        this.color,
        this.textColor,
        this.slug,
        this.topicCount,
        this.postCount,
        this.position,
        this.description,
        this.descriptionText,
        this.descriptionExcerpt,
        this.topicUrl,
        this.readRestricted,
        this.permission,
        this.notificationLevel,
        this.topicTemplate,
        this.hasChildren,
        this.sortOrder,
        this.sortAscending,
        this.showSubcategoryList,
        this.numFeaturedTopics,
        this.defaultView,
        this.subcategoryListStyle,
        this.defaultTopPeriod,
        this.defaultListFilter,
        this.minimumRequiredTags,
        this.navigateToFirstPostAfterRead,
        this.allowedTags,
        this.allowedTagGroups,
        this.allowGlobalTags,
        this.requiredTagGroups,
        this.readOnlyBanner,
        this.uploadedLogo,
        this.uploadedLogoDark,
        this.uploadedBackground,
        this.canEdit,
        this.customFields,
        this.parentCategoryId,
        this.formTemplateIds,
    });

    int? id;
    String? name;
    String? color;
    String? textColor;
    String? slug;
    int? topicCount;
    int? postCount;
    int? position;
    String? description;
    String? descriptionText;
    String? descriptionExcerpt;
    String? topicUrl;
    bool? readRestricted;
    int? permission;
    int? notificationLevel;
    String? topicTemplate;
    bool? hasChildren;
    String? sortOrder;
    String? sortAscending;
    bool? showSubcategoryList;
    int? numFeaturedTopics;
    String? defaultView;
    String? subcategoryListStyle;
    String? defaultTopPeriod;
    String? defaultListFilter;
    int? minimumRequiredTags;
    bool? navigateToFirstPostAfterRead;
    List<dynamic>? allowedTags;
    List<dynamic>? allowedTagGroups;
    bool? allowGlobalTags;
    List<RequiredTagGroup>? requiredTagGroups;
    String? readOnlyBanner;
    String? uploadedLogo;
    String? uploadedLogoDark;
    String? uploadedBackground;
    bool? canEdit;
    CustomEmojiTranslation? customFields;
    int? parentCategoryId;
    List<dynamic>? formTemplateIds;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        color: json["color"],
        textColor: json["text_color"],
        slug: json["slug"],
        topicCount: json["topic_count"],
        postCount: json["post_count"],
        position: json["position"],
        description: json["description"],
        descriptionText: json["description_text"],
        descriptionExcerpt: json["description_excerpt"],
        topicUrl: json["topic_url"],
        readRestricted: json["read_restricted"],
        permission: json["permission"],
        notificationLevel: json["notification_level"],
        topicTemplate: json["topic_template"],
        hasChildren: json["has_children"],
        sortOrder: json["sort_order"],
        sortAscending: json["sort_ascending"],
        showSubcategoryList: json["show_subcategory_list"],
        numFeaturedTopics: json["num_featured_topics"],
        defaultView: json["default_view"],
        subcategoryListStyle: json["subcategory_list_style"],
        defaultTopPeriod: json["default_top_period"],
        defaultListFilter: json["default_list_filter"],
        minimumRequiredTags: json["minimum_required_tags"],
        navigateToFirstPostAfterRead: json["navigate_to_first_post_after_read"],
        allowedTags: json["allowed_tags"] == null ? [] : List<dynamic>.from(json["allowed_tags"]!.map((x) => x)),
        allowedTagGroups: json["allowed_tag_groups"] == null ? [] : List<dynamic>.from(json["allowed_tag_groups"]!.map((x) => x)),
        allowGlobalTags: json["allow_global_tags"],
        requiredTagGroups: json["required_tag_groups"] == null ? [] : List<RequiredTagGroup>.from(json["required_tag_groups"]!.map((x) => RequiredTagGroup.fromJson(x))),
        readOnlyBanner: json["read_only_banner"],
        uploadedLogo: json["uploaded_logo"],
        uploadedLogoDark: json["uploaded_logo_dark"],
        uploadedBackground: json["uploaded_background"],
        canEdit: json["can_edit"],
        customFields: json["custom_fields"] == null ? null : CustomEmojiTranslation.fromJson(json["custom_fields"]),
        parentCategoryId: json["parent_category_id"],
        formTemplateIds: json["form_template_ids"] == null ? [] : List<dynamic>.from(json["form_template_ids"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "color": color,
        "text_color": textColor,
        "slug": slug,
        "topic_count": topicCount,
        "post_count": postCount,
        "position": position,
        "description": description,
        "description_text": descriptionText,
        "description_excerpt": descriptionExcerpt,
        "topic_url": topicUrl,
        "read_restricted": readRestricted,
        "permission": permission,
        "notification_level": notificationLevel,
        "topic_template": topicTemplate,
        "has_children": hasChildren,
        "sort_order": sortOrder,
        "sort_ascending": sortAscending,
        "show_subcategory_list": showSubcategoryList,
        "num_featured_topics": numFeaturedTopics,
        "default_view": defaultView,
        "subcategory_list_style": subcategoryListStyle,
        "default_top_period": defaultTopPeriod,
        "default_list_filter": defaultListFilter,
        "minimum_required_tags": minimumRequiredTags,
        "navigate_to_first_post_after_read": navigateToFirstPostAfterRead,
        "allowed_tags": allowedTags == null ? [] : List<dynamic>.from(allowedTags!.map((x) => x)),
        "allowed_tag_groups": allowedTagGroups == null ? [] : List<dynamic>.from(allowedTagGroups!.map((x) => x)),
        "allow_global_tags": allowGlobalTags,
        "required_tag_groups": requiredTagGroups == null ? [] : List<dynamic>.from(requiredTagGroups!.map((x) => x.toJson())),
        "read_only_banner": readOnlyBanner,
        "uploaded_logo": uploadedLogo,
        "uploaded_logo_dark": uploadedLogoDark,
        "uploaded_background": uploadedBackground,
        "can_edit": canEdit,
        "custom_fields": customFields?.toJson(),
        "parent_category_id": parentCategoryId,
        "form_template_ids": formTemplateIds == null ? [] : List<dynamic>.from(formTemplateIds!.map((x) => x)),
    };
}

class CustomEmojiTranslation {
    CustomEmojiTranslation();

    factory CustomEmojiTranslation.fromJson(Map<String, dynamic> json) => CustomEmojiTranslation(
    );

    Map<String, dynamic> toJson() => {
    };
}

class RequiredTagGroup {
    RequiredTagGroup({
        this.name,
        this.minCount,
    });

    String? name;
    int? minCount;

    factory RequiredTagGroup.fromJson(Map<String, dynamic> json) => RequiredTagGroup(
        name: json["name"],
        minCount: json["min_count"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "min_count": minCount,
    };
}

class Group {
    Group({
        this.id,
        this.name,
        this.flairUrl,
        this.flairBgColor,
        this.flairColor,
    });

    int? id;
    String? name;
    String? flairUrl;
    String? flairBgColor;
    String? flairColor;

    factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        name: json["name"],
        flairUrl: json["flair_url"],
        flairBgColor: json["flair_bg_color"],
        flairColor: json["flair_color"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "flair_url": flairUrl,
        "flair_bg_color": flairBgColor,
        "flair_color": flairColor,
    };
}

class Type {
    Type({
        this.id,
        this.nameKey,
        this.name,
        this.description,
        this.shortDescription,
        this.isFlag,
        this.isCustomFlag,
    });

    int? id;
    String? nameKey;
    String? name;
    String? description;
    String? shortDescription;
    bool? isFlag;
    bool? isCustomFlag;

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        nameKey: json["name_key"],
        name: json["name"],
        description: json["description"],
        shortDescription: json["short_description"],
        isFlag: json["is_flag"],
        isCustomFlag: json["is_custom_flag"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name_key": nameKey,
        "name": name,
        "description": description,
        "short_description": shortDescription,
        "is_flag": isFlag,
        "is_custom_flag": isCustomFlag,
    };
}

class PostTypes {
    PostTypes({
        this.regular,
        this.moderatorAction,
        this.smallAction,
        this.whisper,
    });

    int? regular;
    int? moderatorAction;
    int? smallAction;
    int? whisper;

    factory PostTypes.fromJson(Map<String, dynamic> json) => PostTypes(
        regular: json["regular"],
        moderatorAction: json["moderator_action"],
        smallAction: json["small_action"],
        whisper: json["whisper"],
    );

    Map<String, dynamic> toJson() => {
        "regular": regular,
        "moderator_action": moderatorAction,
        "small_action": smallAction,
        "whisper": whisper,
    };
}

class TrustLevels {
    TrustLevels({
        this.newuser,
        this.basic,
        this.member,
        this.regular,
        this.leader,
    });

    int? newuser;
    int? basic;
    int? member;
    int? regular;
    int? leader;

    factory TrustLevels.fromJson(Map<String, dynamic> json) => TrustLevels(
        newuser: json["newuser"],
        basic: json["basic"],
        member: json["member"],
        regular: json["regular"],
        leader: json["leader"],
    );

    Map<String, dynamic> toJson() => {
        "newuser": newuser,
        "basic": basic,
        "member": member,
        "regular": regular,
        "leader": leader,
    };
}

class UserColorScheme {
    UserColorScheme({
        this.id,
        this.name,
        this.isDark,
    });

    int? id;
    String? name;
    bool? isDark;

    factory UserColorScheme.fromJson(Map<String, dynamic> json) => UserColorScheme(
        id: json["id"],
        name: json["name"],
        isDark: json["is_dark"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_dark": isDark,
    };
}

class UserTheme {
    UserTheme({
        this.themeId,
        this.name,
        this.userThemeDefault,
        this.colorSchemeId,
    });

    int? themeId;
    String? name;
    bool? userThemeDefault;
    int? colorSchemeId;

    factory UserTheme.fromJson(Map<String, dynamic> json) => UserTheme(
        themeId: json["theme_id"],
        name: json["name"],
        userThemeDefault: json["default"],
        colorSchemeId: json["color_scheme_id"],
    );

    Map<String, dynamic> toJson() => {
        "theme_id": themeId,
        "name": name,
        "default": userThemeDefault,
        "color_scheme_id": colorSchemeId,
    };
}
