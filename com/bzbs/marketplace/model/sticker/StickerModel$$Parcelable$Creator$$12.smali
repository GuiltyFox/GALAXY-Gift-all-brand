.class final Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;
.super Ljava/lang/Object;
.source "StickerModel$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$1;)V
    .registers 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;

    invoke-direct {v0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;->createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;
    .registers 3

    .prologue
    .line 142
    new-array v0, p1, [Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable$Creator$$12;->newArray(I)[Lcom/bzbs/marketplace/model/sticker/StickerModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method
