.class public Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;
.super Ljava/lang/Object;
.source "ReviewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatedPointsEntity"
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field points:I

.field time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()I
    .registers 2

    .prologue
    .line 406
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    return v0
.end method

.method public setPoints(I)V
    .registers 2
    .param p1, "points"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 399
    return-void
.end method

.method public setTime(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/bzbs/marketplace/model/review/ReviewModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 403
    return-void
.end method
