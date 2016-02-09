.class public Lcom/samsung/privilege/bean/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public app_id:Ljava/lang/String;

.field public body_html:Ljava/lang/String;

.field public body_text:Ljava/lang/String;

.field public created_time:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public is_hidden:Ljava/lang/String;

.field public is_unread:Z

.field public notification_id:Ljava/lang/String;

.field public object_id:Ljava/lang/String;

.field public object_type:Ljava/lang/String;

.field public recipient_id:Ljava/lang/String;

.field public sender_id:Ljava/lang/String;

.field public title_html:Ljava/lang/String;

.field public title_text:Ljava/lang/String;

.field public updated_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "notification_id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->notification_id:Ljava/lang/String;

    .line 46
    const-string v0, "sender_id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->sender_id:Ljava/lang/String;

    .line 47
    const-string v0, "recipient_id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->recipient_id:Ljava/lang/String;

    .line 48
    const-string v0, "created_time"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->created_time:Ljava/lang/String;

    .line 49
    const-string v0, "updated_time"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->updated_time:Ljava/lang/String;

    .line 50
    const-string v0, "title_html"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->title_html:Ljava/lang/String;

    .line 51
    const-string v0, "title_text"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->title_text:Ljava/lang/String;

    .line 52
    const-string v0, "body_html"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->body_html:Ljava/lang/String;

    .line 53
    const-string v0, "body_text"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->body_text:Ljava/lang/String;

    .line 54
    const-string v0, "href"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->href:Ljava/lang/String;

    .line 55
    const-string v0, "app_id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->app_id:Ljava/lang/String;

    .line 56
    const-string v0, "is_unread"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Notification;->is_unread:Z

    .line 57
    const-string v0, "is_unread"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->is_hidden:Ljava/lang/String;

    .line 58
    const-string v0, "object_id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->object_id:Ljava/lang/String;

    .line 59
    const-string v0, "object_type"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->object_type:Ljava/lang/String;

    .line 60
    const-string v0, "icon_url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Notification;->icon_url:Ljava/lang/String;

    .line 62
    return-void
.end method
