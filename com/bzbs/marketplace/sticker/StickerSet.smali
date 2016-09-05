.class public Lcom/bzbs/marketplace/sticker/StickerSet;
.super Ljava/lang/Object;
.source "StickerSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/sticker/Sticker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->b:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->e:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->b:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->e:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    .line 37
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->a:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "PictureUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->b:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->c:J

    .line 40
    const-string/jumbo v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->d:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "RowKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->e:Ljava/lang/String;

    .line 44
    :try_start_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    .line 45
    const-string/jumbo v0, "Stickers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    const/4 v0, 0x0

    :goto_5a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_72

    .line 47
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/bzbs/marketplace/sticker/Sticker;

    invoke-direct {v4, v2}, Lcom/bzbs/marketplace/sticker/Sticker;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6e} :catch_71

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 50
    :catch_71
    move-exception v0

    .line 53
    :cond_72
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
