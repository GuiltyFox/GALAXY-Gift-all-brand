.class public Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;
.super Ljava/lang/Object;
.source "ReviewModel$BuzzebeesEntity$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable$Creator$$10;


# instance fields
.field private buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable$Creator$$10;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable$Creator$$10;-><init>(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable$Creator$$10;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
    .registers 5

    .prologue
    .line 44
    new-instance v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_d
    iput-object v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    .line 54
    return-object v1

    .line 49
    :cond_1c
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    move-result-object v0

    goto :goto_d
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 62
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    if-nez v0, :cond_13

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    :goto_8
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void

    .line 69
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 77
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->buzzebeesEntity$$3:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
