.class public Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;
.super Ljava/lang/Object;
.source "CampaignGroupModel$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;


# instance fields
.field private campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;-><init>(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    new-instance v3, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_165

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsCheckUserCampaignPermission(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemMostPerPerson(D)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setOriginalPrice(D)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_168

    move v0, v1

    :goto_26
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setFooter(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setFullImageUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRating(D)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCurrentDate(I)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDiscount(D)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCaption(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setAgencyId(I)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemMedia(I)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategoryName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_16b

    move v0, v1

    :goto_6f
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsConditionPass(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_16e

    move v0, v1

    :goto_79
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRedeemCount(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPricePerUnit(D)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_171

    move v0, v1

    :goto_8a
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setNextRedeemDate(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_174

    move v0, v1

    :goto_94
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setUserVisibility(Z)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_177

    move v0, v1

    :goto_9e
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setUserLevel(Z)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setExtra(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_17a

    move v0, v1

    :goto_af
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setHasCrossApp(Z)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setExpireDate(F)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_17d

    move v0, v1

    :goto_c0
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setIsSponsor(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setVote(I)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDayProceed(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setWebsite(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setModifyDate(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setLike(I)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_180

    move v0, v1

    :goto_ed
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCrossAppCampaignId(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_183

    move v0, v1

    :goto_f7
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setMasterCampaignId(Z)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setDayRemain(I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategorySequence(I)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPointType(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setAgencyName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setRankVote(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setOtherPointPerUnit(D)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setQty(D)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_186

    move v0, v1

    :goto_139
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setHeader(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_188

    move v0, v1

    :goto_143
    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setParentCategoryId(Z)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_18a

    :goto_153
    invoke-virtual {v3, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setTracesJson(Z)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setPointPerUnit(D)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setCategoryId(I)V

    .line 118
    return-object v3

    :cond_165
    move v0, v2

    .line 74
    goto/16 :goto_e

    :cond_168
    move v0, v2

    .line 77
    goto/16 :goto_26

    :cond_16b
    move v0, v2

    .line 87
    goto/16 :goto_6f

    :cond_16e
    move v0, v2

    .line 88
    goto/16 :goto_79

    :cond_171
    move v0, v2

    .line 90
    goto/16 :goto_8a

    :cond_174
    move v0, v2

    .line 91
    goto/16 :goto_94

    :cond_177
    move v0, v2

    .line 92
    goto/16 :goto_9e

    :cond_17a
    move v0, v2

    .line 94
    goto/16 :goto_af

    :cond_17d
    move v0, v2

    .line 96
    goto/16 :goto_c0

    :cond_180
    move v0, v2

    .line 102
    goto/16 :goto_ed

    :cond_183
    move v0, v2

    .line 103
    goto/16 :goto_f7

    :cond_186
    move v0, v2

    .line 112
    goto :goto_139

    :cond_188
    move v0, v2

    .line 113
    goto :goto_143

    :cond_18a
    move v1, v2

    .line 115
    goto :goto_153
.end method

.method private readcom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->mode:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 48
    if-gez v5, :cond_33

    .line 62
    :goto_12
    iput-object v1, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->image_url:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_th:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->id:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_en:Ljava/lang/String;

    .line 68
    return-object v4

    .line 51
    :cond_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const/4 v0, 0x0

    move v3, v0

    :goto_3a
    if-ge v3, v5, :cond_50

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4b

    move-object v0, v1

    .line 59
    :goto_44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3a

    .line 57
    :cond_4b
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    move-result-object v0

    goto :goto_44

    :cond_50
    move-object v1, v2

    goto :goto_12
.end method

.method private writecom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;Landroid/os/Parcel;I)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsCheckUserCampaignPermission()Z

    move-result v0

    if-eqz v0, :cond_160

    move v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemMostPerPerson()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 146
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getOriginalPrice()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 147
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->isFooter()Z

    move-result v0

    if-eqz v0, :cond_163

    move v0, v1

    :goto_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRating()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 150
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCurrentDate()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDiscount()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getAgencyId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemMedia()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsConditionPass()Z

    move-result v0

    if-eqz v0, :cond_166

    move v0, v1

    :goto_6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRedeemCount()Z

    move-result v0

    if-eqz v0, :cond_169

    move v0, v1

    :goto_74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPricePerUnit()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getNextRedeemDate()Z

    move-result v0

    if-eqz v0, :cond_16c

    move v0, v1

    :goto_85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getUserVisibility()Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v1

    :goto_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getUserLevel()Z

    move-result v0

    if-eqz v0, :cond_172

    move v0, v1

    :goto_99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getHasCrossApp()Z

    move-result v0

    if-eqz v0, :cond_175

    move v0, v1

    :goto_aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getExpireDate()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 166
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getIsSponsor()Z

    move-result v0

    if-eqz v0, :cond_178

    move v0, v1

    :goto_bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getVote()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayProceed()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getModifyDate()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getLike()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCrossAppCampaignId()Z

    move-result v0

    if-eqz v0, :cond_17b

    move v0, v1

    :goto_e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getMasterCampaignId()Z

    move-result v0

    if-eqz v0, :cond_17e

    move v0, v1

    :goto_f2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayRemain()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategorySequence()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getAgencyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getRankVote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getOtherPointPerUnit()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 180
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getQty()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 181
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_181

    move v0, v1

    :goto_134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getParentCategoryId()Z

    move-result v0

    if-eqz v0, :cond_183

    move v0, v1

    :goto_13e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getTracesJson()Z

    move-result v0

    if-eqz v0, :cond_185

    :goto_14e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointPerUnit()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 187
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getCategoryId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void

    :cond_160
    move v0, v2

    .line 144
    goto/16 :goto_9

    :cond_163
    move v0, v2

    .line 147
    goto/16 :goto_21

    :cond_166
    move v0, v2

    .line 157
    goto/16 :goto_6a

    :cond_169
    move v0, v2

    .line 158
    goto/16 :goto_74

    :cond_16c
    move v0, v2

    .line 160
    goto/16 :goto_85

    :cond_16f
    move v0, v2

    .line 161
    goto/16 :goto_8f

    :cond_172
    move v0, v2

    .line 162
    goto/16 :goto_99

    :cond_175
    move v0, v2

    .line 164
    goto/16 :goto_aa

    :cond_178
    move v0, v2

    .line 166
    goto/16 :goto_bb

    :cond_17b
    move v0, v2

    .line 172
    goto/16 :goto_e8

    :cond_17e
    move v0, v2

    .line 173
    goto/16 :goto_f2

    :cond_181
    move v0, v2

    .line 182
    goto :goto_134

    :cond_183
    move v0, v2

    .line 183
    goto :goto_13e

    :cond_185
    move v1, v2

    .line 185
    goto :goto_14e
.end method

.method private writecom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 122
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->mode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    if-nez v0, :cond_27

    .line 124
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :cond_d
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->image_url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_th:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->id:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_en:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void

    .line 126
    :cond_27
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 128
    if-nez v0, :cond_48

    .line 129
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 131
    :cond_48
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_list_MarketPlaceListModel(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;Landroid/os/Parcel;I)V

    goto :goto_36
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->campaignGroupModel$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
