.class public Lcom/bzbs/bean/CampaignExtraAd;
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
            "Lcom/bzbs/bean/CampaignExtraAdItem;",
            ">;"
        }
    .end annotation
.end field

.field public Orientation:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "orientation"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    .line 30
    :try_start_23
    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    move-object v2, v1

    .line 34
    :goto_2c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_60

    .line 35
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 36
    new-instance v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    invoke-direct {v0, v6}, Lcom/bzbs/bean/CampaignExtraAdItem;-><init>(Lorg/json/JSONObject;)V

    .line 38
    iget-object v6, p0, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 39
    iget-object v6, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Quality:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    move-object v1, v2

    .line 34
    :goto_56
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2c

    :cond_5c
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 42
    goto :goto_56

    .line 47
    :cond_60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    move v0, v3

    .line 48
    :goto_68
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c8

    .line 49
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 50
    new-instance v4, Lcom/bzbs/bean/CampaignExtraAdItem;

    invoke-direct {v4, v3}, Lcom/bzbs/bean/CampaignExtraAdItem;-><init>(Lorg/json/JSONObject;)V

    .line 52
    iget-object v3, p0, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v6, "video"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_ba

    .line 54
    if-eqz v1, :cond_92

    .line 55
    iget-object v3, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_8f
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 57
    :cond_92
    if-eqz v2, :cond_8f

    .line 58
    iget-object v3, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_99} :catch_9a

    goto :goto_8f

    .line 76
    :catch_9a
    move-exception v0

    .line 77
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException|CampaignExtraAd):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_b9
    :goto_b9
    return-void

    .line 62
    :cond_ba
    if-eqz v2, :cond_8f

    .line 63
    :try_start_bc
    iget-object v3, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 67
    :cond_c2
    iget-object v3, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 71
    :cond_c8
    iget-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b9

    .line 72
    if-eqz v1, :cond_b9

    .line 73
    iget-object v0, p0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d7
    .catch Lorg/json/JSONException; {:try_start_bc .. :try_end_d7} :catch_9a

    goto :goto_b9

    :cond_d8
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_56
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
