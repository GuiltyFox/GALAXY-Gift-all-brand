.class public Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;
.super Ljava/lang/Object;
.source "CampaignGroupModel$CampaignsEntity$$Parcelable.java"

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
        "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable$Creator$$8;


# instance fields
.field private campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable$Creator$$8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable$Creator$$8;-><init>(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable$1;)V

    sput-object v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->CREATOR:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable$Creator$$8;

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
    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    .line 26
    return-void

    .line 23
    :cond_e
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->readcom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel$CampaignsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    move-result-object v0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    .line 30
    return-void
.end method

.method private readcom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel$CampaignsEntity(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    new-instance v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    invoke-direct {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryId:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CrossAppCampaignId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OriginalPrice:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Discount:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategorySequence:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ExpireDate:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserLevel:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointPerUnit:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Rating:D

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMedia:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->TracesJson:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RankVote:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Website:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayRemain:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10c

    move v0, v1

    :goto_68
    iput-boolean v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsSponsor:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Name:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Like:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ModifyDate:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Qty:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10f

    move v0, v1

    :goto_89
    iput-boolean v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->HasCrossApp:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OtherPointPerUnit:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ID:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PricePerUnit:F

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->MasterCampaignId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ParentCategoryId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CurrentDate:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Vote:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsCheckUserCampaignPermission:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserVisibility:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->NextRedeemDate:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Caption:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Type:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->FullImageUrl:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Extra:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemCount:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayProceed:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMostPerPerson:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointType:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_112

    :goto_109
    iput-boolean v1, v3, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsConditionPass:Z

    .line 87
    return-object v3

    :cond_10c
    move v0, v2

    .line 60
    goto/16 :goto_68

    :cond_10f
    move v0, v2

    .line 65
    goto/16 :goto_89

    :cond_112
    move v1, v2

    .line 86
    goto :goto_109
.end method

.method private writecom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel$CampaignsEntity(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;Landroid/os/Parcel;I)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CrossAppCampaignId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OriginalPrice:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Discount:F

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 95
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategorySequence:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ExpireDate:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserLevel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointPerUnit:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v4, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Rating:D

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMedia:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->TracesJson:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RankVote:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Website:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayRemain:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsSponsor:Z

    if-eqz v0, :cond_dd

    move v0, v1

    :goto_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Like:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ModifyDate:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Qty:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->HasCrossApp:Z

    if-eqz v0, :cond_e0

    move v0, v1

    :goto_6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OtherPointPerUnit:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ID:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PricePerUnit:F

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->MasterCampaignId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ParentCategoryId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CurrentDate:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Vote:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsCheckUserCampaignPermission:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserVisibility:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->NextRedeemDate:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Caption:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Type:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->FullImageUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Extra:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemCount:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayProceed:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMostPerPerson:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p1, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsConditionPass:Z

    if-eqz v0, :cond_e2

    :goto_d9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void

    :cond_dd
    move v0, v2

    .line 106
    goto/16 :goto_52

    :cond_e0
    move v0, v2

    .line 111
    goto :goto_6e

    :cond_e2
    move v1, v2

    .line 132
    goto :goto_d9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->getParcel()Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->campaignsEntity$$0:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity$$Parcelable;->writecom_bzbs_marketplace_model_marketplace_menu_CampaignGroupModel$CampaignsEntity(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;Landroid/os/Parcel;I)V

    goto :goto_8
.end method
