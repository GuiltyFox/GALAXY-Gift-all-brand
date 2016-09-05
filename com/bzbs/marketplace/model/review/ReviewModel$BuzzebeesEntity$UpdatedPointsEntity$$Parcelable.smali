.class public Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;
.super Ljava/lang/Object;
.source "ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable$Creator$$11;


# instance fields
.field private updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable$Creator$$11;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable$Creator$$11;-><init>(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable$Creator$$11;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 47
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 51
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

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

.method public getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->updatedPointsEntity$$6:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
