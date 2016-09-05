.class public Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;
.super Ljava/lang/Object;
.source "CampaignTypeGetModel.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/CampaignTypeGetModel;

.field private description:Ljava/lang/String;

.field private points:I

.field private updated_points:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/model/CampaignTypeGetModel;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->a:Lcom/bzbs/marketplace/model/CampaignTypeGetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->points:I

    return v0
.end method

.method public getUpdated_points()Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 209
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->points:I

    .line 210
    return-void
.end method

.method public setUpdated_points(Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity$Updated_pointsEntity;

    .line 202
    return-void
.end method
