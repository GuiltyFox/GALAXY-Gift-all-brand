.class public Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;
.super Ljava/lang/Object;
.source "Style$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/detail/Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable$Creator$$2;


# instance fields
.field private style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable$Creator$$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable$Creator$$2;-><init>(Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable$Creator$$2;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_b
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    .line 28
    return-void

    .line 25
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/detail/Style;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    .line 32
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Style(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPoString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setQuantity(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setPrice(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setCampaignId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    if-gez v5, :cond_3a

    .line 68
    :goto_2f
    invoke-virtual {v4, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setSubitems(Ljava/util/List;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->setValue(Ljava/lang/String;)V

    .line 70
    return-object v4

    .line 57
    :cond_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v0, 0x0

    move v3, v0

    :goto_41
    if-ge v3, v5, :cond_57

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_52

    move-object v0, v1

    .line 65
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 63
    :cond_52
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    move-result-object v0

    goto :goto_4b

    :cond_57
    move-object v1, v2

    goto :goto_2f
.end method

.method private readcom_bzbs_marketplace_model_marketplace_detail_Subitem(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPoString(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setQuantity(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setPrice(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setCampaignId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->setValue(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 87
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    .line 93
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :cond_2d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void

    .line 95
    :cond_35
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
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

    .line 97
    if-nez v0, :cond_5a

    .line 98
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 100
    :cond_5a
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-direct {p0, v0, p2, p3}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V

    goto :goto_48
.end method

.method private writecom_bzbs_marketplace_model_marketplace_detail_Subitem(Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/Style;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    if-nez v0, :cond_9

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :goto_8
    return-void

    .line 39
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->style$$4:Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/detail/Style$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_detail_Style(Lcom/bzbs/marketplace/model/marketplace/detail/Style;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
