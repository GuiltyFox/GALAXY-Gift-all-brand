.class public Lcom/samsung/privilege/bean/InAppItem;
.super Ljava/lang/Object;
.source "InAppItem.java"


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public uri_playstore:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->id:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->description:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->image_url:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->id:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->description:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->image_url:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    .line 20
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->id:Ljava/lang/String;

    .line 21
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->name:Ljava/lang/String;

    .line 22
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->description:Ljava/lang/String;

    .line 23
    const-string v0, "image_url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->image_url:Ljava/lang/String;

    .line 24
    const-string v0, "uri_playstore"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    .line 25
    return-void
.end method
