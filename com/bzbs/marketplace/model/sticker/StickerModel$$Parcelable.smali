.class public Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;
.super Ljava/lang/Object;
.source "StickerModel$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;


# instance fields
.field private stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;-><init>(Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_b
    iput-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    .line 28
    return-void

    .line 25
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->readcom_bzbs_marketplace_model_sticker_StickerModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/sticker/StickerModel;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    .line 32
    return-void
.end method

.method private readcom_bzbs_marketplace_model_sticker_StickerModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v4, Lcom/bzbs/marketplace/model/sticker/StickerModel;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/sticker/StickerModel;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setPartitionKey(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setPictureUrl(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 52
    if-gez v5, :cond_3a

    .line 66
    :goto_21
    invoke-virtual {v4, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setStickers(Ljava/util/List;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setETag(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setRowKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->setTimestamp(I)V

    .line 70
    return-object v4

    .line 55
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const/4 v0, 0x0

    move v3, v0

    :goto_41
    if-ge v3, v5, :cond_57

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_52

    move-object v0, v1

    .line 63
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 61
    :cond_52
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->readcom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    move-result-object v0

    goto :goto_4b

    :cond_57
    move-object v1, v2

    goto :goto_21
.end method

.method private readcom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setPartitionKey(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setPictureUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setETag(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setText(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setStickerKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setRowKey(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->setTimestamp(I)V

    .line 84
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_sticker_StickerModel(Lcom/bzbs/marketplace/model/sticker/StickerModel;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 88
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    .line 92
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :cond_1f
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getTimestamp()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void

    .line 94
    :cond_35
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel;->getStickers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;

    .line 96
    if-nez v0, :cond_5a

    .line 97
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 99
    :cond_5a
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->writecom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;Landroid/os/Parcel;I)V

    goto :goto_48
.end method

.method private writecom_bzbs_marketplace_model_sticker_StickerModel$StickersEntity(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getStickerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getTimestamp()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/sticker/StickerModel;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/sticker/StickerModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    if-nez v0, :cond_9

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :goto_8
    return-void

    .line 39
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->stickerModel$$0:Lcom/bzbs/marketplace/model/sticker/StickerModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;->writecom_bzbs_marketplace_model_sticker_StickerModel(Lcom/bzbs/marketplace/model/sticker/StickerModel;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
