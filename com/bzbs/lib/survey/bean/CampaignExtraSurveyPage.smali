.class public Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;
.super Ljava/lang/Object;
.source "CampaignExtraSurveyPage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->b:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->d:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->e:Z

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->f:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->g:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->a:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "html_question"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->b:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "answer"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->d:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "force_correct_answer"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->e:Z

    .line 37
    const-string/jumbo v0, "order_by"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->f:Ljava/lang/String;

    .line 40
    :try_start_6c
    const-string/jumbo v0, "fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 42
    :goto_74
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_a5

    .line 43
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_83} :catch_86

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 46
    :catch_86
    move-exception v0

    .line 47
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_a5
    :try_start_a5
    const-string/jumbo v0, "inputs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 53
    :goto_ad
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_e3

    .line 54
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    new-instance v3, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    invoke-direct {v3, v1}, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;-><init>(Lorg/json/JSONObject;)V

    .line 56
    iget-object v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_c1} :catch_c4

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 58
    :catch_c4
    move-exception v0

    .line 59
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_e3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
