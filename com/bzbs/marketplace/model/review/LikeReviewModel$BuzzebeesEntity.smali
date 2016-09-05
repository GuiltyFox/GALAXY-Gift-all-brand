.class public Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;
.super Ljava/lang/Object;
.source "LikeReviewModel.java"


# instance fields
.field private description:Ljava/lang/String;

.field private points:I

.field private updated_points:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->points:I

    return v0
.end method

.method public getUpdated_points()Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->description:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->points:I

    .line 45
    return-void
.end method

.method public setUpdated_points(Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;->updated_points:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;

    .line 49
    return-void
.end method
