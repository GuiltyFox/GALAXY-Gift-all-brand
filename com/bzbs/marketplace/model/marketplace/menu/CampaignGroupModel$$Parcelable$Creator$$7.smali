.class final Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;
.super Ljava/lang/Object;
.source "CampaignGroupModel$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$1;)V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;
    .registers 3

    .prologue
    .line 207
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;

    invoke-direct {v0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;->createFromParcel(Landroid/os/Parcel;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;
    .registers 3

    .prologue
    .line 212
    new-array v0, p1, [Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable$Creator$$7;->newArray(I)[Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$$Parcelable;

    move-result-object v0

    return-object v0
.end method
