.class public Lcom/facebook/share/internal/WebDialogParameters;
.super Ljava/lang/Object;
.source "WebDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string/jumbo v1, "name"

    .line 57
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "description"

    .line 62
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getAppGroupPrivacy()Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2f

    .line 67
    const-string/jumbo v2, "privacy"

    .line 70
    invoke-virtual {v1}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2f
    return-object v0
.end method

.method public static create(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string/jumbo v1, "message"

    .line 82
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "to"

    .line 86
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getTo()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "title"

    .line 90
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "data"

    .line 94
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getData()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 96
    const-string/jumbo v1, "action_type"

    .line 99
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$ActionType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_47
    const-string/jumbo v1, "object_id"

    .line 104
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 106
    const-string/jumbo v1, "filters"

    .line 109
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Filters;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_6b
    const-string/jumbo v1, "suggestions"

    .line 114
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v2

    .line 111
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    return-object v0
.end method

.method public static create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string/jumbo v1, "href"

    .line 123
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    return-object v0
.end method

.method public static create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string/jumbo v1, "action_type"

    .line 134
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_13
    invoke-static {p0}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_28

    .line 140
    const-string/jumbo v2, "action_properties"

    .line 143
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_28} :catch_29

    .line 149
    :cond_28
    return-object v0

    .line 145
    :catch_29
    move-exception v0

    .line 146
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unable to serialize the ShareOpenGraphContent to JSON"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createForFeed(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    const-string/jumbo v1, "to"

    .line 184
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getToId()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "link"

    .line 189
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "picture"

    .line 194
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getPicture()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "source"

    .line 199
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getMediaSource()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "name"

    .line 204
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkName()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "caption"

    .line 209
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkCaption()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "description"

    .line 214
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkDescription()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object v0
.end method

.method public static createForFeed(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string/jumbo v1, "name"

    .line 158
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "description"

    .line 163
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "link"

    .line 168
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "picture"

    .line 173
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0
.end method
