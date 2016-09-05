.class public Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;
.super Ljava/lang/Object;
.source "LikePointMarketModel.java"


# instance fields
.field private Like:I

.field private PeopleLike:I

.field private buzzebees:Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuzzebees()Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->buzzebees:Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getLike()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->Like:I

    return v0
.end method

.method public getPeopleLike()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->PeopleLike:I

    return v0
.end method

.method public setBuzzebees(Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->buzzebees:Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;

    .line 28
    return-void
.end method

.method public setLike(I)V
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->Like:I

    .line 24
    return-void
.end method

.method public setPeopleLike(I)V
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->PeopleLike:I

    .line 20
    return-void
.end method
