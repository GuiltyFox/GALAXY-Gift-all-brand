.class public Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;
.super Ljava/lang/Object;
.source "CampaignExtraSurveyPageInput.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public caption:Ljava/lang/String;

.field public direct_choice:Ljava/lang/String;

.field public index:I

.field public max_length:I

.field public min_length:I

.field public required:Z

.field public type:Ljava/lang/String;

.field public url_image:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    .line 13
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    .line 14
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    .line 15
    iput-boolean v1, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    .line 18
    iput v1, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    .line 25
    const-string v0, "caption"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    .line 26
    const-string v0, "type"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    .line 27
    const-string v0, "min_length"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->min_length:I

    .line 28
    const-string v0, "max_length"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->max_length:I

    .line 29
    const-string v0, "required"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->required:Z

    .line 30
    const-string v0, "direct_choice"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    .line 31
    const-string v0, "image_url"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    .line 32
    const-string v0, "index"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
