.class public Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
.super Ljava/lang/Object;
.source "ReviewModel.java"


# instance fields
.field public description:Ljava/lang/String;

.field public points:I

.field public updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    return v0
.end method

.method public getUpdated_points()Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 377
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 369
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->points:I

    .line 370
    return-void
.end method

.method public setUpdated_points(Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 374
    return-void
.end method
