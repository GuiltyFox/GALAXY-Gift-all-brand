.class public Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;
.super Ljava/lang/Object;
.source "UpdatedPoint$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable$Creator$$5;


# instance fields
.field private updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable$Creator$$5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable$Creator$$5;-><init>(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable$Creator$$5;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->setPoString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->setTime(Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->updatedPoint$$3:Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
