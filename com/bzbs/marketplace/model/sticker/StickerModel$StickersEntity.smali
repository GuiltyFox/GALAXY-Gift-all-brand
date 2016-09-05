.class public Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;
.super Ljava/lang/Object;
.source "StickerModel.java"


# instance fields
.field public ETag:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PictureUrl:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public StickerKey:Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public Timestamp:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->PartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->PictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->RowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->StickerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Timestamp:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->ETag:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Name:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->PartitionKey:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->PictureUrl:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->RowKey:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStickerKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->StickerKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Text:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTimestamp(I)V
    .registers 2

    .prologue
    .line 120
    iput p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->Timestamp:I

    .line 121
    return-void
.end method
