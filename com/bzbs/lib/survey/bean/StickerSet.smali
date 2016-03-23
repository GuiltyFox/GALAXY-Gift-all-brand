.class public Lcom/bzbs/lib/survey/bean/StickerSet;
.super Ljava/lang/Object;
.source "StickerSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Name:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PictureUrl:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Timestamp:J

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/Sticker;",
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

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Name:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PartitionKey:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->RowKey:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Name:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PartitionKey:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->RowKey:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Name:Ljava/lang/String;

    .line 16
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    .line 18
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PartitionKey:Ljava/lang/String;

    .line 19
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->RowKey:Ljava/lang/String;

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    .line 37
    const-string/jumbo v4, "Name"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Name:Ljava/lang/String;

    .line 38
    const-string/jumbo v4, "PictureUrl"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PictureUrl:Ljava/lang/String;

    .line 39
    const-string/jumbo v4, "Timestamp"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->Timestamp:J

    .line 40
    const-string/jumbo v4, "PartitionKey"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->PartitionKey:Ljava/lang/String;

    .line 41
    const-string/jumbo v4, "RowKey"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->RowKey:Ljava/lang/String;

    .line 44
    :try_start_4b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    .line 45
    const-string/jumbo v4, "Stickers"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, "jsonStickers":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_90

    .line 47
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "jsonSticker":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/lib/survey/bean/Sticker;

    invoke-direct {v5, v2}, Lcom/bzbs/lib/survey/bean/Sticker;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6e} :catch_71

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 50
    .end local v1    # "i":I
    .end local v2    # "jsonSticker":Lorg/json/JSONObject;
    .end local v3    # "jsonStickers":Lorg/json/JSONArray;
    :catch_71
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(StickerSet|JSONException):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_90
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
