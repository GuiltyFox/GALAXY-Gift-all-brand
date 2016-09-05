.class public Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;
.super Ljava/lang/Object;
.source "CampaignExtraSurveyPageInput.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->a:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->c:Z

    .line 14
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->d:I

    .line 15
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    .line 16
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    .line 17
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->g:Z

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->j:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    .line 28
    const-string/jumbo v0, "caption"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->a:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->b:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "min_length"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->d:I

    .line 31
    const-string/jumbo v0, "max_length"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->e:I

    .line 32
    const-string/jumbo v0, "required"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->f:Z

    .line 33
    const-string/jumbo v0, "can_edit"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->g:Z

    .line 34
    const-string/jumbo v0, "answer"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->c:Z

    .line 35
    const-string/jumbo v0, "direct_choice"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "image_url"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->i:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "call_number"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->j:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "index"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->k:I

    .line 39
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 24
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
