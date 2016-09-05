.class public Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;
.super Ljava/lang/Object;
.source "SubCampaignStyle$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable$Creator$$3;


# instance fields
.field private subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable$Creator$$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable$Creator$$3;-><init>(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable$Creator$$3;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    .line 27
    return-void

    .line 24
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    .line 31
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 70
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPoString(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setQuantity(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPrice(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setCampaignId(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    if-gez v5, :cond_3a

    .line 92
    :goto_2f
    invoke-virtual {v4, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setSubitems(Ljava/util/List;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setValue(Ljava/lang/String;)V

    .line 94
    return-object v4

    .line 81
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const/4 v0, 0x0

    move v3, v0

    :goto_41
    if-ge v3, v5, :cond_57

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_52

    move-object v0, v1

    .line 89
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 87
    :cond_52
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

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

    .line 45
    new-instance v6, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    invoke-direct {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setMasterCampaignId(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 49
    if-gez v7, :cond_23

    .line 63
    :goto_15
    invoke-virtual {v6, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setStyles(Ljava/util/List;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_3f

    move v0, v3

    :goto_1f
    invoke-virtual {v6, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->setHasStyle(Z)V

    .line 65
    return-object v6

    .line 52
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 53
    :goto_29
    if-ge v5, v7, :cond_41

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_3a

    move-object v0, v1

    .line 60
    :goto_33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_29

    .line 58
    :cond_3a
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    move-result-object v0

    goto :goto_33

    :cond_3f
    move v0, v4

    .line 64
    goto :goto_1f

    :cond_41
    move-object v1, v2

    goto :goto_15
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
    .registers 4

    .prologue
    .line 99
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPoString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setQuantity(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPrice(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setCampaignId(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setValue(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 129
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    .line 135
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :cond_2d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return-void

    .line 137
    :cond_35
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
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

    .line 139
    if-nez v0, :cond_5a

    .line 140
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 142
    :cond_5a
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V

    goto :goto_48
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 111
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getMasterCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 113
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :cond_12
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->isHasStyle()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void

    .line 115
    :cond_1d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
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

    .line 117
    if-nez v0, :cond_42

    .line 118
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 120
    :cond_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V

    goto :goto_30

    .line 125
    :cond_49
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->subCampaignStyle$$3:Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_SubCampaignStyle(Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
