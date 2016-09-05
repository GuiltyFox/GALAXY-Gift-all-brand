.class public Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;
.super Ljava/lang/Object;
.source "Picture$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/detail/Picture;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable$Creator$$1;


# instance fields
.field private picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable$Creator$$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable$Creator$$1;-><init>(Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable$Creator$$1;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Picture(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Picture(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Picture;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setSequence(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setCampaignID(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setFullImageUrl(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setImageUrl(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setCaption(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setID(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Picture(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getSequence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getCampaignID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/Picture;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->picture$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Picture(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
