.class public Lcom/bzbs/lib/survey/bean/CampaignExtraAd;
.super Ljava/lang/Object;
.source "CampaignExtraAd.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public ArrayCampaignExtraAdItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;",
            ">;"
        }
    .end annotation
.end field

.field public Orientation:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    .line 26
    const-string/jumbo v7, "type"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    .line 27
    const-string/jumbo v7, "orientation"

    invoke-static {p1, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    .line 30
    :try_start_21
    const-string/jumbo v7, "items"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 32
    .local v6, "jsonItems":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 33
    .local v2, "adItemVideoNormal":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    const/4 v1, 0x0

    .line 34
    .local v1, "adItemVideoHD":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_5a

    .line 35
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 36
    .local v5, "jsonItem":Lorg/json/JSONObject;
    new-instance v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v0, v5}, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;-><init>(Lorg/json/JSONObject;)V

    .line 38
    .local v0, "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 39
    iget-object v7, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->Quality:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "hd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 40
    move-object v1, v0

    .line 34
    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 42
    :cond_58
    move-object v2, v0

    goto :goto_55

    .line 47
    .end local v0    # "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    :cond_5a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    .line 48
    const/4 v4, 0x0

    :goto_62
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_c2

    .line 49
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 50
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    new-instance v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v0, v5}, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;-><init>(Lorg/json/JSONObject;)V

    .line 52
    .restart local v0    # "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 53
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_b4

    .line 54
    if-eqz v1, :cond_8c

    .line 55
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 57
    :cond_8c
    if-eqz v2, :cond_89

    .line 58
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_93} :catch_94

    goto :goto_89

    .line 76
    .end local v0    # "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .end local v1    # "adItemVideoHD":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .end local v2    # "adItemVideoNormal":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .end local v4    # "i":I
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "jsonItems":Lorg/json/JSONArray;
    :catch_94
    move-exception v3

    .line 77
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "MyLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(JSONException|CampaignExtraAd):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_b3
    :goto_b3
    return-void

    .line 62
    .restart local v0    # "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .restart local v1    # "adItemVideoHD":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .restart local v2    # "adItemVideoNormal":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .restart local v4    # "i":I
    .restart local v5    # "jsonItem":Lorg/json/JSONObject;
    .restart local v6    # "jsonItems":Lorg/json/JSONArray;
    :cond_b4
    if-eqz v2, :cond_89

    .line 63
    :try_start_b6
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 67
    :cond_bc
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 71
    .end local v0    # "adItem":Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    :cond_c2
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_b3

    .line 72
    if-eqz v1, :cond_b3

    .line 73
    iget-object v7, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_b6 .. :try_end_d1} :catch_94

    goto :goto_b3
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
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
