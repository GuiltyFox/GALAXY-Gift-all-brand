.class public Lcom/bzbs/lib/survey/bean/CampaignExtra;
.super Ljava/lang/Object;
.source "CampaignExtra.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

.field public campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

.field public campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    .line 14
    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    .line 16
    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    .line 24
    :try_start_a
    const-string/jumbo v4, "ad"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    .local v2, "jsonAd":Lorg/json/JSONObject;
    new-instance v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    invoke-direct {v4, v2}, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_18} :catch_35

    .line 31
    .end local v2    # "jsonAd":Lorg/json/JSONObject;
    :goto_18
    :try_start_18
    const-string/jumbo v4, "survey"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    .local v3, "jsonSurvey":Lorg/json/JSONObject;
    new-instance v4, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    invoke-direct {v4, v3}, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_26} :catch_55

    .line 38
    .end local v3    # "jsonSurvey":Lorg/json/JSONObject;
    :goto_26
    :try_start_26
    const-string/jumbo v4, "action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "jsonAction":Lorg/json/JSONObject;
    new-instance v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    invoke-direct {v4, v1}, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_34} :catch_75

    .line 43
    .end local v1    # "jsonAction":Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 26
    :catch_35
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(JSONException|CampaignExtra|ad):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 33
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_55
    move-exception v0

    .line 34
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(JSONException|CampaignExtra|survey):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_75
    move-exception v0

    .line 41
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(JSONException|CampaignExtra|action):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
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
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
