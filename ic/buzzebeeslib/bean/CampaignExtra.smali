.class public Lic/buzzebeeslib/bean/CampaignExtra;
.super Ljava/lang/Object;
.source "CampaignExtra.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

.field public campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

.field public campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    .line 14
    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    .line 16
    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    .line 24
    :try_start_a
    const-string v4, "ad"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    .local v2, "jsonAd":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/CampaignExtraAd;

    invoke-direct {v4, v2}, Lic/buzzebeeslib/bean/CampaignExtraAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_17} :catch_32

    .line 31
    .end local v2    # "jsonAd":Lorg/json/JSONObject;
    :goto_17
    :try_start_17
    const-string v4, "survey"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    .local v3, "jsonSurvey":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    invoke-direct {v4, v3}, Lic/buzzebeeslib/bean/CampaignExtraSurvey;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_24} :catch_4c

    .line 38
    .end local v3    # "jsonSurvey":Lorg/json/JSONObject;
    :goto_24
    :try_start_24
    const-string v4, "action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "jsonAction":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/CampaignExtraAction;

    invoke-direct {v4, v1}, Lic/buzzebeeslib/bean/CampaignExtraAction;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_31} :catch_66

    .line 43
    .end local v1    # "jsonAction":Lorg/json/JSONObject;
    :goto_31
    return-void

    .line 26
    :catch_32
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(JSONException|CampaignExtra|ad):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 33
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4c
    move-exception v0

    .line 34
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(JSONException|CampaignExtra|survey):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_66
    move-exception v0

    .line 41
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(JSONException|CampaignExtra|action):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
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
