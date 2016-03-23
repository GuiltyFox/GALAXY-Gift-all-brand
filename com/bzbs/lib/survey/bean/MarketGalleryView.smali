.class public Lcom/bzbs/lib/survey/bean/MarketGalleryView;
.super Ljava/lang/Object;
.source "MarketGalleryView.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public CampaignID:Ljava/lang/String;

.field public Caption:Ljava/lang/String;

.field public FullImageUrl:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public ImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->ID:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "CampaignID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->CampaignID:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "Caption"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->Caption:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "ImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 38
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method

.method public FullImageUrlMiddle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 50
    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v0, ""

    goto :goto_d
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 29
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 20
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method
