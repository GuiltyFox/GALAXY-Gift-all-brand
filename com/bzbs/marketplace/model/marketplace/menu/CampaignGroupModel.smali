.class public Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;
.super Ljava/lang/Object;
.source "CampaignGroupModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field campaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation
.end field

.field id:I

.field image_url:Ljava/lang/String;

.field mode:Ljava/lang/String;

.field name:Ljava/lang/String;

.field name_en:Ljava/lang/String;

.field name_th:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaigns()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->id:I

    return v0
.end method

.method public getImage_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_en()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getName_th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_th:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaigns(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;>;"
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->campaigns:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->id:I

    .line 35
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "image_url"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->image_url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->mode:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName_en(Ljava/lang/String;)V
    .registers 2
    .param p1, "name_en"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_en:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setName_th(Ljava/lang/String;)V
    .registers 2
    .param p1, "name_th"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->name_th:Ljava/lang/String;

    .line 55
    return-void
.end method
