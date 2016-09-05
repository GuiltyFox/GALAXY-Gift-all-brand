.class final Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;
.super Ljava/lang/Object;
.source "MarketPlaceDetailModel$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$1;)V
    .registers 2

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;
    .registers 3

    .prologue
    .line 554
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;

    invoke-direct {v0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;->createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;
    .registers 3

    .prologue
    .line 559
    new-array v0, p1, [Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;->newArray(I)[Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method
