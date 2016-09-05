.class public Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;
.super Ljava/lang/Object;
.source "AddCartModel.java"


# instance fields
.field public campaign:Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;

.field public cart_count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaign()Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->campaign:Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;

    return-object v0
.end method

.method public getCart_count()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->cart_count:I

    return v0
.end method

.method public setCampaign(Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->campaign:Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;

    .line 21
    return-void
.end method

.method public setCart_count(I)V
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->cart_count:I

    .line 29
    return-void
.end method
