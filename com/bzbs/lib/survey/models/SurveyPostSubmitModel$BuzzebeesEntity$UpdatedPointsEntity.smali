.class public Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;
.super Ljava/lang/Object;
.source "SurveyPostSubmitModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatedPointsEntity"
.end annotation


# instance fields
.field private points:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    return v0
.end method

.method public setPoints(I)V
    .registers 2
    .param p1, "points"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;->points:I

    .line 272
    return-void
.end method

.method public setTime(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity$UpdatedPointsEntity;->time:I

    .line 276
    return-void
.end method
