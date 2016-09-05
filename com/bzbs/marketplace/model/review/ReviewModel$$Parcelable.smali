.class public Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;
.super Ljava/lang/Object;
.source "ReviewModel$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/review/ReviewModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable$Creator$$9;


# instance fields
.field private reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable$Creator$$9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable$Creator$$9;-><init>(Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable$Creator$$9;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 22
    const/4 v0, 0x0

    .line 26
    :goto_b
    iput-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 27
    return-void

    .line 24
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 31
    return-void
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setRating(I)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setPlaceId(I)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setAgencyId(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setType(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLocationAgencyId(I)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setPartitionKey(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setAppId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setETag(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setTimestamp(I)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeight(I)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_e2

    .line 62
    const/4 v0, 0x0

    .line 66
    :goto_72
    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setBuzzebees(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setOs(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCampaignId(I)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setPhotoId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setPostId(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setAgencyName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setBuzzKey(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setWidth(I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_e7

    move v0, v1

    :goto_d0
    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setPlaceName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setRowKey(Ljava/lang/String;)V

    .line 82
    return-object v2

    .line 64
    :cond_e2
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v0

    goto :goto_72

    .line 79
    :cond_e7
    const/4 v0, 0x0

    goto :goto_d0
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
    .registers 5

    .prologue
    .line 87
    new-instance v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    .line 90
    const/4 v0, 0x0

    .line 94
    :goto_d
    iput-object v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    .line 97
    return-object v1

    .line 92
    :cond_1c
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    move-result-object v0

    goto :goto_d
.end method

.method private readcom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 4

    .prologue
    .line 102
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 105
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel(Lcom/bzbs/marketplace/model/review/ReviewModel;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRating()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getPlaceId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getAgencyId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLocationAgencyId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getPartitionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getTimestamp()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLikes()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzebees()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v1

    if-nez v1, :cond_d9

    .line 124
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_6d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCampaignId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getPhotoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCommentCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_e4

    :goto_c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getPlaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void

    .line 126
    :cond_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzebees()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;Landroid/os/Parcel;I)V

    goto :goto_6d

    .line 141
    :cond_e4
    const/4 v0, 0x0

    goto :goto_c7
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    if-nez v0, :cond_13

    .line 148
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :goto_8
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void

    .line 150
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method

.method private writecom_bzbs_marketplace_model_review_ReviewModel$BuzzebeesEntity$UpdatedPointsEntity(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 158
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p1, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;

    if-nez v0, :cond_9

    .line 36
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    :goto_8
    return-void

    .line 38
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->reviewModel$$0:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel$$Parcelable;->writecom_bzbs_marketplace_model_review_ReviewModel(Lcom/bzbs/marketplace/model/review/ReviewModel;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
