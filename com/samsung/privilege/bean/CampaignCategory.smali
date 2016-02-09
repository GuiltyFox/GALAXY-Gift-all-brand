.class public Lcom/samsung/privilege/bean/CampaignCategory;
.super Ljava/lang/Object;
.source "CampaignCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Cat:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public Image_Url:Ljava/lang/String;

.field public IsSelected:Z

.field public Name:Ljava/lang/String;

.field public Ns:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Url:Ljava/lang/String;

.field public order:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Url:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Ns:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Url:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Ns:Ljava/lang/String;

    .line 30
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->ID:Ljava/lang/String;

    .line 31
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 32
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Type:Ljava/lang/String;

    .line 33
    const-string v0, "cat"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Cat:Ljava/lang/String;

    .line 34
    const-string v0, "image_url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Image_Url:Ljava/lang/String;

    .line 35
    const-string v0, "order"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->order:I

    .line 37
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Url:Ljava/lang/String;

    .line 38
    const-string v0, "ns"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignCategory;->Ns:Ljava/lang/String;

    .line 39
    return-void
.end method
