.class public Lic/buzzebeeslib/bean/CampaignCategoryDynamic;
.super Ljava/lang/Object;
.source "CampaignCategoryDynamic.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cat:I

.field public count:I

.field public id:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->id:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->mode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    .line 14
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->count:I

    .line 15
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->cat:I

    .line 18
    iput-object p1, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->id:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->mode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    .line 14
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->count:I

    .line 15
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->cat:I

    .line 22
    const-string v0, "id"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->id:Ljava/lang/String;

    .line 23
    const-string v0, "mode"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->mode:Ljava/lang/String;

    .line 24
    const-string v0, "name"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    .line 25
    const-string v0, "count"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->count:I

    .line 26
    const-string v0, "cat"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignCategoryDynamic;->cat:I

    .line 27
    return-void
.end method
