.class public Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;
.super Ljava/lang/Object;
.source "MarketPlaceDetailModel$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;


# instance fields
.field private marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;-><init>(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable$Creator$$0;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 27
    return-void

    .line 24
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_MarketPlaceDetailModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 31
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_MarketPlaceDetailModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 11

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    new-instance v6, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-direct {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setFullImageUrl(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_41a

    move v0, v1

    :goto_17
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsSpecificLocation(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsHighlight(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCurrentDate(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDiscount(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCaption(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRankFavourite(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_41d

    move v0, v1

    :goto_44
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDelivered(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setParentCampaignId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setType(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setConditionAlert(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCustomInput(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSerialFormat(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPricePerUnit(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCustomFacebookMessage(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setScore(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setNextRedeemDate(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setStatusID(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSponsorCategoryName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v8, :cond_420

    move-object v0, v3

    .line 71
    :goto_9b
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSubCampaignStyle(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCategoryDashboardSize(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setWinnerUserId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserSummaryPrice(D)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserPackagePrice(I)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setNotificationCount(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCrossAppCampaignId(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setMasterCampaignId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserRequirePoint(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyWebsite(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBadge(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDefaultPrivilegeMessage(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRedeemMedium(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRefAISCampaignID(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSoldOutDate(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRedeemMostPerPersonInPeriod(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setTracesJson(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDetail(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setStartDate(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsCheckUserCampaignPermission(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_426

    move v0, v1

    :goto_12a
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSendNotification(Z)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    if-gez v7, :cond_429

    move-object v0, v3

    .line 108
    :goto_134
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPictures(Ljava/util/List;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserLevel(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setLatestVoteDate(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setExpireDate(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPlace(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUseCount(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDeliveryJson(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCreateDate(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setShippingBy(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setHashTagJson(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_444

    move v0, v1

    :goto_17d
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUnder18(Z)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setWebsite(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyFAX(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setMerchantStatusId(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCategorySequence(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleFavourite(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyTel(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyID(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setConditionAlertId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v8, :cond_447

    .line 133
    :goto_1be
    invoke-virtual {v6, v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUpdatedPoint(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setItemCountSold(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setVoucherExpireDate(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setOtherPointPerUnit(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSubCampaign(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRankVote(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setFanPageId(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserPackagePoint(I)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRedeemMostPerPerson(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setHasWinner(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_44d

    move v0, v1

    :goto_207
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSpecifyBranch(Z)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_450

    move v0, v1

    :goto_211
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSendPullNotification(Z)V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRating(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyId(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_453

    move v0, v1

    :goto_229
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsShowNotiNearby(Z)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setWinnerUserName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSerialCount(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyLogoUrl(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserVisibility(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleVote(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_456

    move v0, v1

    :goto_256
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setHasCrossApp(Z)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setParentCategoryID(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setTermsAndCondition(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setSerialPrefix(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setKeyword(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsFavourite(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBarcode(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_459

    move v0, v1

    :goto_28a
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsSplitPointSystem(Z)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setMinutesValidAfterUsed(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDayProceed(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCustomCaption(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setModifyDate(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setVisibility(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDayRemain(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPointType(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setStyleJson(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_45c

    move v0, v1

    :goto_2cc
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsNotAutoUse(Z)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyAddress(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCondition(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setQty(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBidStartPoint(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleLike(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setReferenceCode(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPointPerUnit(F)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUpdatedPointsOther(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBadgeJson(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setOriginalPrice(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_45f

    move v0, v1

    :goto_323
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsRequireUniqueSerial(Z)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyCity(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyCountry(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCategoryName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRedeemCount(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setInterfaceDisplay(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setTopVote(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setLocationAgencyId(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleDislike(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setDaysValidAfterExpire(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRelated(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setExtra(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRedeem(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setShippingPayment(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyZipCode(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRankLike(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_462

    move v0, v1

    :goto_396
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsSpecificPrintVoucher(Z)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_465

    :goto_39f
    invoke-virtual {v6, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsSponsor(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCategoryID(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyEmail(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setModifyBy(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBidStepPoint(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setQuantity(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRegularDeliveryCostPerUnit(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setEMSDeliveryCostPerUnit(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setTimeRounding(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBidUsePoint(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setAgencyName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCoolDown(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setCreateBy(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setUserProfileScore(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setRefPTTAgencyID(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setLocation(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setID(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setBuzz(Ljava/lang/String;)V

    .line 216
    return-object v6

    :cond_41a
    move v0, v2

    .line 47
    goto/16 :goto_17

    :cond_41d
    move v0, v2

    .line 53
    goto/16 :goto_44

    .line 69
    :cond_420
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    goto/16 :goto_9b

    :cond_426
    move v0, v2

    .line 91
    goto/16 :goto_12a

    .line 97
    :cond_429
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 98
    :goto_42f
    if-ge v5, v7, :cond_468

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v8, :cond_43f

    move-object v0, v3

    .line 105
    :goto_438
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_42f

    .line 103
    :cond_43f
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Picture(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    move-result-object v0

    goto :goto_438

    :cond_444
    move v0, v2

    .line 118
    goto/16 :goto_17d

    .line 131
    :cond_447
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v3

    goto/16 :goto_1be

    :cond_44d
    move v0, v2

    .line 143
    goto/16 :goto_207

    :cond_450
    move v0, v2

    .line 144
    goto/16 :goto_211

    :cond_453
    move v0, v2

    .line 147
    goto/16 :goto_229

    :cond_456
    move v0, v2

    .line 153
    goto/16 :goto_256

    :cond_459
    move v0, v2

    .line 160
    goto/16 :goto_28a

    :cond_45c
    move v0, v2

    .line 169
    goto/16 :goto_2cc

    :cond_45f
    move v0, v2

    .line 181
    goto/16 :goto_323

    :cond_462
    move v0, v2

    .line 197
    goto/16 :goto_396

    :cond_465
    move v1, v2

    .line 198
    goto/16 :goto_39f

    :cond_468
    move-object v0, v4

    goto/16 :goto_134
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Picture(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Picture;
    .registers 4

    .prologue
    .line 288
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setSequence(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setCampaignID(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setFullImageUrl(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setImageUrl(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setCaption(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->setID(Ljava/lang/String;)V

    .line 295
    return-object v0
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 246
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPoString(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setQuantity(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPrice(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setCampaignId(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    if-gez v5, :cond_3a

    .line 268
    :goto_2f
    invoke-virtual {v4, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setSubitems(Ljava/util/List;)V

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setValue(Ljava/lang/String;)V

    .line 270
    return-object v4

    .line 257
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const/4 v0, 0x0

    move v3, v0

    :goto_41
    if-ge v3, v5, :cond_57

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_52

    move-object v0, v1

    .line 265
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 263
    :cond_52
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    move-result-object v0

    goto :goto_4b

    :cond_57
    move-object v1, v2

    goto :goto_2f
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 221
    new-instance v6, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    invoke-direct {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setMasterCampaignId(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 225
    if-gez v7, :cond_23

    .line 239
    :goto_15
    invoke-virtual {v6, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setStyles(Ljava/util/List;)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_3f

    move v0, v3

    :goto_1f
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setHasStyle(Z)V

    .line 241
    return-object v6

    .line 228
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 229
    :goto_29
    if-ge v5, v7, :cond_41

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_3a

    move-object v0, v1

    .line 236
    :goto_33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_29

    .line 234
    :cond_3a
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    move-result-object v0

    goto :goto_33

    :cond_3f
    move v0, v4

    .line 240
    goto :goto_1f

    :cond_41
    move-object v1, v2

    goto :goto_15
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
    .registers 4

    .prologue
    .line 275
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;-><init>()V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPoString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setQuantity(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPrice(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setCampaignId(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setName(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setType(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setValue(Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;
    .registers 4

    .prologue
    .line 300
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->setPoString(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->setTime(Ljava/lang/String;)V

    .line 303
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_MarketPlaceDetailModel(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Landroid/os/Parcel;I)V
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsSpecificLocation()Z

    move-result v0

    if-eqz v0, :cond_412

    move v0, v1

    :goto_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getIsHighlight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDiscount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRankFavourite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v0

    if-eqz v0, :cond_415

    move v0, v1

    :goto_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getParentCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSerialFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPricePerUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomFacebookMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getNextRedeemDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getStatusID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSponsorCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    if-nez v0, :cond_418

    .line 327
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    :goto_97
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCategoryDashboardSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWinnerUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserSummaryPrice()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 335
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePrice()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getNotificationCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCrossAppCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getMasterCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserRequirePoint()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBadge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDefaultPrivilegeMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRedeemMedium()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRefAISCampaignID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSoldOutDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRedeemMostPerPersonInPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getTracesJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getIsCheckUserCampaignPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isSendNotification()Z

    move-result v0

    if-eqz v0, :cond_424

    move v0, v1

    :goto_123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPictures()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_427

    .line 353
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :cond_12f
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getLatestVoteDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getExpireDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPlace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUseCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDeliveryJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCreateDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getShippingBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getHashTagJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isUnder18()Z

    move-result v0

    if-eqz v0, :cond_453

    move v0, v1

    :goto_175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyFAX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getMerchantStatusId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCategorySequence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleFavourite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlertId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    if-nez v0, :cond_456

    .line 384
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    :goto_1b9
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getItemCountSold()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getVoucherExpireDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getOtherPointPerUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRankVote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFanPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePoint()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRedeemMostPerPerson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getHasWinner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isSpecifyBranch()Z

    move-result v0

    if-eqz v0, :cond_462

    move v0, v1

    :goto_1ff
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isSendPullNotification()Z

    move-result v0

    if-eqz v0, :cond_465

    move v0, v1

    :goto_209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRating()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsShowNotiNearby()Z

    move-result v0

    if-eqz v0, :cond_468

    move v0, v1

    :goto_221
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWinnerUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSerialCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserVisibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleVote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isHasCrossApp()Z

    move-result v0

    if-eqz v0, :cond_46b

    move v0, v1

    :goto_24e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getParentCategoryID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getTermsAndCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSerialPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getIsFavourite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBarcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsSplitPointSystem()Z

    move-result v0

    if-eqz v0, :cond_46e

    move v0, v1

    :goto_282
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getMinutesValidAfterUsed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDayProceed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getModifyDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getVisibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDayRemain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getStyleJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsNotAutoUse()Z

    move-result v0

    if-eqz v0, :cond_471

    move v0, v1

    :goto_2c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBidStartPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getReferenceCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 433
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPointsOther()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBadgeJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getOriginalPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsRequireUniqueSerial()Z

    move-result v0

    if-eqz v0, :cond_474

    move v0, v1

    :goto_31b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRedeemCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getInterfaceDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getTopVote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getLocationAgencyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleDislike()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDaysValidAfterExpire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRelated()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRedeem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getShippingPayment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRankLike()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsSpecificPrintVoucher()Z

    move-result v0

    if-eqz v0, :cond_477

    move v0, v1

    :goto_38e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isIsSponsor()Z

    move-result v0

    if-eqz v0, :cond_47a

    :goto_397
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCategoryID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getModifyBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBidStepPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRegularDeliveryCostPerUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getEMSDeliveryCostPerUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getTimeRounding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBidUsePoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCoolDown()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCreateBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserProfileScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getRefPTTAgencyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBuzz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    return-void

    :cond_412
    move v0, v2

    .line 308
    goto/16 :goto_11

    :cond_415
    move v0, v2

    .line 314
    goto/16 :goto_3e

    .line 329
    :cond_418
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;Landroid/os/Parcel;I)V

    goto/16 :goto_97

    :cond_424
    move v0, v2

    .line 351
    goto/16 :goto_123

    .line 355
    :cond_427
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    .line 357
    if-nez v0, :cond_44c

    .line 358
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43a

    .line 360
    :cond_44c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Picture(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;Landroid/os/Parcel;I)V

    goto :goto_43a

    :cond_453
    move v0, v2

    .line 374
    goto/16 :goto_175

    .line 386
    :cond_456
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;Landroid/os/Parcel;I)V

    goto/16 :goto_1b9

    :cond_462
    move v0, v2

    .line 398
    goto/16 :goto_1ff

    :cond_465
    move v0, v2

    .line 399
    goto/16 :goto_209

    :cond_468
    move v0, v2

    .line 402
    goto/16 :goto_221

    :cond_46b
    move v0, v2

    .line 408
    goto/16 :goto_24e

    :cond_46e
    move v0, v2

    .line 415
    goto/16 :goto_282

    :cond_471
    move v0, v2

    .line 424
    goto/16 :goto_2c4

    :cond_474
    move v0, v2

    .line 436
    goto/16 :goto_31b

    :cond_477
    move v0, v2

    .line 452
    goto/16 :goto_38e

    :cond_47a
    move v1, v2

    .line 453
    goto/16 :goto_397
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Picture(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getSequence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getCampaignID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 492
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    .line 498
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    :cond_2d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    return-void

    .line 500
    :cond_35
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    .line 502
    if-nez v0, :cond_5a

    .line 503
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 505
    :cond_5a
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V

    goto :goto_48
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 474
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getMasterCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 476
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    :cond_12
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->isHasStyle()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    return-void

    .line 478
    :cond_1d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    .line 480
    if-nez v0, :cond_42

    .line 481
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 483
    :cond_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V

    goto :goto_30

    .line 488
    :cond_49
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_UpdatedPoint(Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->marketPlaceDetailModel$$0:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_MarketPlaceDetailModel(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
