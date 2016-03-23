.class public Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;
.super Ljava/lang/Object;
.source "CampaignExtraSurveyPage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public answer:Ljava/lang/String;

.field public fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public force_correct_answer:Z

.field public html_question:Ljava/lang/String;

.field public inputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;",
            ">;"
        }
    .end annotation
.end field

.field public order_by:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_answer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->title:Ljava/lang/String;

    .line 16
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    .line 17
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    .line 18
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->answer:Ljava/lang/String;

    .line 19
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->force_correct_answer:Z

    .line 20
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->order_by:Ljava/lang/String;

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->fields:Ljava/util/ArrayList;

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    .line 25
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 32
    const-string/jumbo v7, "title"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->title:Ljava/lang/String;

    .line 33
    const-string/jumbo v7, "html_question"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->html_question:Ljava/lang/String;

    .line 34
    const-string/jumbo v7, "type"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    .line 35
    const-string/jumbo v7, "answer"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->answer:Ljava/lang/String;

    .line 36
    const-string/jumbo v7, "force_correct_answer"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->force_correct_answer:Z

    .line 37
    const-string/jumbo v7, "order_by"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->order_by:Ljava/lang/String;

    .line 40
    :try_start_6c
    const-string/jumbo v7, "fields"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 42
    .local v4, "jsonFields":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_74
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_a5

    .line 43
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "field":Ljava/lang/String;
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->fields:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_83} :catch_86

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 46
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonFields":Lorg/json/JSONArray;
    :catch_86
    move-exception v1

    .line 47
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "MyLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(JSONException):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_a5
    :try_start_a5
    const-string/jumbo v7, "inputs"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 53
    .local v6, "jsonInputs":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ad
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_e3

    .line 54
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 55
    .local v5, "jsonInput":Lorg/json/JSONObject;
    new-instance v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    invoke-direct {v0, v5}, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;-><init>(Lorg/json/JSONObject;)V

    .line 56
    .local v0, "campaignExtraSurveyPageInput":Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_c1} :catch_c4

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 58
    .end local v0    # "campaignExtraSurveyPageInput":Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;
    .end local v3    # "i":I
    .end local v5    # "jsonInput":Lorg/json/JSONObject;
    .end local v6    # "jsonInputs":Lorg/json/JSONArray;
    :catch_c4
    move-exception v1

    .line 59
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v7, "MyLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(JSONException):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_e3
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
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
