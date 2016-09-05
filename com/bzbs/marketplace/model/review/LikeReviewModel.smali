.class public Lcom/bzbs/marketplace/model/review/LikeReviewModel;
.super Ljava/lang/Object;
.source "LikeReviewModel.java"


# instance fields
.field private buzzebees:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;

.field private result:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuzzebees()Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel;->buzzebees:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getResult()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel;->result:Z

    return v0
.end method

.method public setBuzzebees(Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel;->buzzebees:Lcom/bzbs/marketplace/model/review/LikeReviewModel$BuzzebeesEntity;

    .line 22
    return-void
.end method

.method public setResult(Z)V
    .registers 2

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/review/LikeReviewModel;->result:Z

    .line 18
    return-void
.end method
