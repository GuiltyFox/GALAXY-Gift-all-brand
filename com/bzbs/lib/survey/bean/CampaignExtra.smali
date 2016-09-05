.class public Lcom/bzbs/lib/survey/bean/CampaignExtra;
.super Ljava/lang/Object;
.source "CampaignExtra.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

.field public b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

.field public c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    .line 14
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    .line 16
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    .line 24
    :try_start_a
    const-string/jumbo v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_18} :catch_35

    .line 31
    :goto_18
    :try_start_18
    const-string/jumbo v0, "survey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_26} :catch_55

    .line 38
    :goto_26
    :try_start_26
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_34} :catch_75

    .line 43
    :goto_34
    return-void

    .line 26
    :catch_35
    move-exception v0

    .line 27
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException|CampaignExtra|ad):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 33
    :catch_55
    move-exception v0

    .line 34
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException|CampaignExtra|survey):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 40
    :catch_75
    move-exception v0

    .line 41
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException|CampaignExtra|action):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
