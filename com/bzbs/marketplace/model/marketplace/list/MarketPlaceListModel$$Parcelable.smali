.class public Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;
.super Ljava/lang/Object;
.source "MarketPlaceListModel$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable$Creator$$6;


# instance fields
.field private marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable$Creator$$6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable$Creator$$6;-><init>(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable$Creator$$6;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    new-instance v3, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_165

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsCheckUserCampaignPermission(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemMostPerPerson(D)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setOriginalPrice(D)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_168

    move v0, v1

    :goto_26
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setFooter(Z)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setFullImageUrl(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRating(D)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCurrentDate(I)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDiscount(D)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCaption(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setAgencyId(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setType(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemMedia(I)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategoryName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_16b

    move v0, v1

    :goto_6f
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsConditionPass(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_16e

    move v0, v1

    :goto_79
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemCount(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPricePerUnit(D)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_171

    move v0, v1

    :goto_8a
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setNextRedeemDate(Z)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_174

    move v0, v1

    :goto_94
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setUserVisibility(Z)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_177

    move v0, v1

    :goto_9e
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setUserLevel(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setExtra(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_17a

    move v0, v1

    :goto_af
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setHasCrossApp(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setExpireDate(F)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_17d

    move v0, v1

    :goto_c0
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsSponsor(Z)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setVote(I)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDayProceed(I)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setWebsite(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setModifyDate(I)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setLike(I)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_180

    move v0, v1

    :goto_ed
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCrossAppCampaignId(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_183

    move v0, v1

    :goto_f7
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setMasterCampaignId(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDayRemain(I)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategorySequence(I)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPointType(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setAgencyName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRankVote(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setOtherPointPerUnit(D)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setQty(D)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_186

    move v0, v1

    :goto_139
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setHeader(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_188

    move v0, v1

    :goto_143
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setParentCategoryId(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_18a

    :goto_153
    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setTracesJson(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPointPerUnit(D)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategoryId(I)V

    .line 89
    return-object v3

    :cond_165
    move v0, v2

    .line 45
    goto/16 :goto_e

    :cond_168
    move v0, v2

    .line 48
    goto/16 :goto_26

    :cond_16b
    move v0, v2

    .line 58
    goto/16 :goto_6f

    :cond_16e
    move v0, v2

    .line 59
    goto/16 :goto_79

    :cond_171
    move v0, v2

    .line 61
    goto/16 :goto_8a

    :cond_174
    move v0, v2

    .line 62
    goto/16 :goto_94

    :cond_177
    move v0, v2

    .line 63
    goto/16 :goto_9e

    :cond_17a
    move v0, v2

    .line 65
    goto/16 :goto_af

    :cond_17d
    move v0, v2

    .line 67
    goto/16 :goto_c0

    :cond_180
    move v0, v2

    .line 73
    goto/16 :goto_ed

    :cond_183
    move v0, v2

    .line 74
    goto/16 :goto_f7

    :cond_186
    move v0, v2

    .line 83
    goto :goto_139

    :cond_188
    move v0, v2

    .line 84
    goto :goto_143

    :cond_18a
    move v1, v2

    .line 86
    goto :goto_153
.end method

.method private writecom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;Landroid/os/Parcel;I)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsCheckUserCampaignPermission()Z

    move-result v0

    if-eqz v0, :cond_160

    move v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemMostPerPerson()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getOriginalPrice()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->isFooter()Z

    move-result v0

    if-eqz v0, :cond_163

    move v0, v1

    :goto_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRating()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCurrentDate()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDiscount()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getAgencyId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemMedia()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsConditionPass()Z

    move-result v0

    if-eqz v0, :cond_166

    move v0, v1

    :goto_6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemCount()Z

    move-result v0

    if-eqz v0, :cond_169

    move v0, v1

    :goto_74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPricePerUnit()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 109
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getNextRedeemDate()Z

    move-result v0

    if-eqz v0, :cond_16c

    move v0, v1

    :goto_85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getUserVisibility()Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v1

    :goto_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getUserLevel()Z

    move-result v0

    if-eqz v0, :cond_172

    move v0, v1

    :goto_99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getHasCrossApp()Z

    move-result v0

    if-eqz v0, :cond_175

    move v0, v1

    :goto_aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getExpireDate()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsSponsor()Z

    move-result v0

    if-eqz v0, :cond_178

    move v0, v1

    :goto_bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getVote()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayProceed()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getModifyDate()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getLike()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCrossAppCampaignId()Z

    move-result v0

    if-eqz v0, :cond_17b

    move v0, v1

    :goto_e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getMasterCampaignId()Z

    move-result v0

    if-eqz v0, :cond_17e

    move v0, v1

    :goto_f2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayRemain()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategorySequence()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getAgencyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRankVote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getOtherPointPerUnit()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 129
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getQty()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 130
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_181

    move v0, v1

    :goto_134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getParentCategoryId()Z

    move-result v0

    if-eqz v0, :cond_183

    move v0, v1

    :goto_13e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getTracesJson()Z

    move-result v0

    if-eqz v0, :cond_185

    :goto_14e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointPerUnit()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 136
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategoryId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void

    :cond_160
    move v0, v2

    .line 93
    goto/16 :goto_9

    :cond_163
    move v0, v2

    .line 96
    goto/16 :goto_21

    :cond_166
    move v0, v2

    .line 106
    goto/16 :goto_6a

    :cond_169
    move v0, v2

    .line 107
    goto/16 :goto_74

    :cond_16c
    move v0, v2

    .line 109
    goto/16 :goto_85

    :cond_16f
    move v0, v2

    .line 110
    goto/16 :goto_8f

    :cond_172
    move v0, v2

    .line 111
    goto/16 :goto_99

    :cond_175
    move v0, v2

    .line 113
    goto/16 :goto_aa

    :cond_178
    move v0, v2

    .line 115
    goto/16 :goto_bb

    :cond_17b
    move v0, v2

    .line 121
    goto/16 :goto_e8

    :cond_17e
    move v0, v2

    .line 122
    goto/16 :goto_f2

    :cond_181
    move v0, v2

    .line 131
    goto :goto_134

    :cond_183
    move v0, v2

    .line 132
    goto :goto_13e

    :cond_185
    move v1, v2

    .line 134
    goto :goto_14e
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->marketPlaceListModel$$0:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
