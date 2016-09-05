.class public Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;
.super Ljava/lang/Object;
.source "CampaignTypeGetModel.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;

.field private points:I

.field private time:I


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;->a:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;->points:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;->time:I

    return v0
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 237
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;->points:I

    .line 238
    return-void
.end method

.method public setTime(I)V
    .registers 2

    .prologue
    .line 233
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;->time:I

    .line 234
    return-void
.end method
