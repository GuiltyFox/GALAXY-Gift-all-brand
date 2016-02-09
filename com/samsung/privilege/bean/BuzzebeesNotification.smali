.class public Lcom/samsung/privilege/bean/BuzzebeesNotification;
.super Ljava/lang/Object;
.source "BuzzebeesNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public IsCallUnreaded:Z

.field public IsRead:Z

.field public Object:Ljava/lang/String;

.field public ObjectType:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Timestamp:Ljava/lang/String;

.field public badgeObject:Lcom/samsung/privilege/bean/BadgeNotification;

.field public campaignObject:Lcom/samsung/privilege/bean/CampaignView;

.field public messageObject:Lcom/samsung/privilege/bean/MessageNotification;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->IsCallUnreaded:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->IsCallUnreaded:Z

    .line 32
    const-string v2, "PartitionKey"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->PartitionKey:Ljava/lang/String;

    .line 33
    const-string v2, "RowKey"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->RowKey:Ljava/lang/String;

    .line 34
    const-string v2, "Timestamp"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->Timestamp:Ljava/lang/String;

    .line 35
    const-string v2, "ObjectType"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    .line 36
    const-string v2, "IsRead"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->IsRead:Z

    .line 41
    :try_start_32
    const-string v2, "Object"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    .local v1, "notificationObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 44
    new-instance v2, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v2, v1}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    .line 45
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/CampaignView;->isFromNoti:Z

    .line 46
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    const-string v3, "Qty"

    invoke-static {v1, v3}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/samsung/privilege/bean/CampaignView;->ItemRemain:I

    .line 47
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    .line 60
    .end local v1    # "notificationObject":Lorg/json/JSONObject;
    :cond_5d
    :goto_5d
    return-void

    .line 48
    .restart local v1    # "notificationObject":Lorg/json/JSONObject;
    :cond_5e
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v3, "badge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 49
    new-instance v2, Lcom/samsung/privilege/bean/BadgeNotification;

    invoke-direct {v2, v1}, Lcom/samsung/privilege/bean/BadgeNotification;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->badgeObject:Lcom/samsung/privilege/bean/BadgeNotification;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_6f} :catch_70

    goto :goto_5d

    .line 56
    .end local v1    # "notificationObject":Lorg/json/JSONObject;
    :catch_70
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|Badge):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "notificationObject":Lorg/json/JSONObject;
    :cond_8a
    :try_start_8a
    iget-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 51
    new-instance v2, Lcom/samsung/privilege/bean/MessageNotification;

    invoke-direct {v2, v1}, Lcom/samsung/privilege/bean/MessageNotification;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->messageObject:Lcom/samsung/privilege/bean/MessageNotification;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_9b} :catch_70

    goto :goto_5d
.end method
