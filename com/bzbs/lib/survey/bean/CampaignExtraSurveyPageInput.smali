.class public Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;
.super Ljava/lang/Object;
.source "CampaignExtraSurveyPageInput.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public answer:Z

.field public call_number:Ljava/lang/String;

.field public can_edit:Z

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->answer:Z

    .line 14
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->min_length:I

    .line 15
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    .line 16
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    .line 17
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->can_edit:Z

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->call_number:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    .line 28
    const-string/jumbo v0, "caption"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->type:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "min_length"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->min_length:I

    .line 31
    const-string/jumbo v0, "max_length"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->max_length:I

    .line 32
    const-string/jumbo v0, "required"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->required:Z

    .line 33
    const-string/jumbo v0, "can_edit"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->can_edit:Z

    .line 34
    const-string/jumbo v0, "answer"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->answer:Z

    .line 35
    const-string/jumbo v0, "direct_choice"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "image_url"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->url_image:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "call_number"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->call_number:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "index"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->index:I

    .line 39
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
    .line 24
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
