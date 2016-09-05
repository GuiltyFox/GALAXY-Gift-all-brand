.class public Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;
.super Ljava/lang/Object;
.source "SharePointMarketModel.java"


# instance fields
.field private description:Ljava/lang/String;

.field private points:I

.field private updated_points:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity$UpdatedPointsEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->points:I

    return v0
.end method

.method public getUpdated_points()Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity$UpdatedPointsEntity;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->points:I

    .line 55
    return-void
.end method

.method public setUpdated_points(Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity$UpdatedPointsEntity;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 59
    return-void
.end method
