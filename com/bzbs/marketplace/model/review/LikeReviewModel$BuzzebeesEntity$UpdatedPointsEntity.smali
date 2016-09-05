.class public Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
.super Ljava/lang/Object;
.source "LikeReviewModel.java"


# instance fields
.field private points:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    return v0
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 78
    return-void
.end method

.method public setTime(I)V
    .registers 2

    .prologue
    .line 81
    iput p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 82
    return-void
.end method
