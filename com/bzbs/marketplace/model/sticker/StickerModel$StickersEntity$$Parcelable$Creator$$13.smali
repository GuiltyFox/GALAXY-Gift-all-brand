.class final Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;
.super Ljava/lang/Object;
.source "StickerModel$StickersEntity$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$1;)V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;

    invoke-direct {v0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;->createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;
    .registers 3

    .prologue
    .line 89
    new-array v0, p1, [Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable$Creator$$13;->newArray(I)[Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity$$Parcelable;

    move-result-object v0

    return-object v0
.end method
