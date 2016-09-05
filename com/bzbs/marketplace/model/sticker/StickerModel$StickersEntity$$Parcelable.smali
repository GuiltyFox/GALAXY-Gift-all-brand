.class public Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;
.super Ljava/lang/Object;
.source "StickerModel$StickersEntity$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;


# instance fields
.field private stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;-><init>(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 21
    const/4 v0, 0x0

    .line 25
    :goto_b
    iput-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->readcom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setPartitionKey(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setPictureUrl(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setETag(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setText(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setStickerKey(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setRowKey(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setTimestamp(I)V

    .line 53
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getStickerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getTimestamp()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    if-nez v0, :cond_9

    .line 35
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    :goto_8
    return-void

    .line 37
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->stickersEntity$$4:Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;->writecom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
