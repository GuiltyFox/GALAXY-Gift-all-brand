.class public Lcom/bzbs/bean/NotificationBuzzebees;
.super Ljava/lang/Object;
.source "NotificationBuzzebees.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public CreateTime:Ljava/lang/String;

.field public IsCallUnreaded:Z

.field public IsRead:Z

.field public Object:Ljava/lang/String;

.field public ObjectType:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Timestamp:Ljava/lang/String;

.field public badgeObject:Lcom/bzbs/bean/NotificationBadge;

.field public campaignObject:Lcom/bzbs/bean/Campaign;

.field public commentObject:Lcom/bzbs/bean/CommentNotification;

.field public linkObject:Lcom/bzbs/bean/NotificationLink;

.field public messageObject:Lcom/bzbs/bean/NotificationMessage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->IsCallUnreaded:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->IsCallUnreaded:Z

    .line 35
    const-string/jumbo v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->PartitionKey:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "RowKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->RowKey:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->Timestamp:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ObjectType"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "IsRead"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->IsRead:Z

    .line 40
    const-string/jumbo v0, "CreateTime"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->CreateTime:Ljava/lang/String;

    .line 45
    :try_start_40
    const-string/jumbo v0, "Object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 48
    new-instance v1, Lcom/bzbs/bean/Campaign;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->campaignObject:Lcom/bzbs/bean/Campaign;

    .line 49
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->campaignObject:Lcom/bzbs/bean/Campaign;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bzbs/bean/Campaign;->isFromNoti:Z

    .line 50
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->campaignObject:Lcom/bzbs/bean/Campaign;

    const-string/jumbo v2, "Qty"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/bzbs/bean/Campaign;->ItemRemain:I

    .line 51
    iget-object v0, p0, Lcom/bzbs/bean/NotificationBuzzebees;->campaignObject:Lcom/bzbs/bean/Campaign;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    .line 70
    :cond_6e
    :goto_6e
    return-void

    .line 52
    :cond_6f
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 53
    new-instance v1, Lcom/bzbs/bean/NotificationBadge;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/NotificationBadge;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->badgeObject:Lcom/bzbs/bean/NotificationBadge;

    goto :goto_6e

    .line 66
    :catch_82
    move-exception v0

    goto :goto_6e

    .line 54
    :cond_84
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 55
    new-instance v1, Lcom/bzbs/bean/NotificationMessage;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/NotificationMessage;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->messageObject:Lcom/bzbs/bean/NotificationMessage;

    goto :goto_6e

    .line 56
    :cond_97
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "cat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 57
    new-instance v1, Lcom/bzbs/bean/NotificationMessage;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/NotificationMessage;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->messageObject:Lcom/bzbs/bean/NotificationMessage;

    goto :goto_6e

    .line 58
    :cond_aa
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 59
    new-instance v1, Lcom/bzbs/bean/CommentNotification;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/CommentNotification;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->commentObject:Lcom/bzbs/bean/CommentNotification;

    goto :goto_6e

    .line 60
    :cond_bd
    iget-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->ObjectType:Ljava/lang/String;

    const-string/jumbo v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 61
    new-instance v1, Lcom/bzbs/bean/NotificationLink;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/NotificationLink;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/NotificationBuzzebees;->linkObject:Lcom/bzbs/bean/NotificationLink;
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_cf} :catch_82

    goto :goto_6e
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/NotificationBuzzebees;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 76
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/NotificationBuzzebees;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/NotificationBuzzebees;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 74
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 81
    :cond_1b
    return-object v1

    .line 77
    :catch_1c
    move-exception v2

    goto :goto_18
.end method
