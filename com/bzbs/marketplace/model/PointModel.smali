.class public Lcom/bzbs/marketplace/model/PointModel;
.super Ljava/lang/Object;
.source "PointModel.java"


# instance fields
.field private points:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/bzbs/marketplace/model/PointModel;->points:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/bzbs/marketplace/model/PointModel;->time:I

    return v0
.end method

.method public setPoints(I)V
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/bzbs/marketplace/model/PointModel;->points:I

    .line 20
    return-void
.end method

.method public setTime(I)V
    .registers 2

    .prologue
    .line 15
    iput p1, p0, Lcom/bzbs/marketplace/model/PointModel;->time:I

    .line 16
    return-void
.end method
