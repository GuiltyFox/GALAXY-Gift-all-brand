.class public Lcom/bzbs/marketplace/model/sticker/StickerModel;
.super Ljava/lang/Object;
.source "StickerModel.java"


# instance fields
.field public ETag:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PictureUrl:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;",
            ">;"
        }
    .end annotation
.end field

.field public Timestamp:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->PartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->PictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->RowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStickers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Stickers:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Timestamp:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->ETag:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->PartitionKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->PictureUrl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->RowKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStickers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Stickers:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setTimestamp(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel;->Timestamp:I

    .line 40
    return-void
.end method
