.class public Lcom/bzbs/bean/MarketGalleryView;
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->ID:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "CampaignID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->CampaignID:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "Caption"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->Caption:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "ImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 40
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 31
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 22
    iget-object v0, p0, Lcom/bzbs/bean/MarketGalleryView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_17
.end method
