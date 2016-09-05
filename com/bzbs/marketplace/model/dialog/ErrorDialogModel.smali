.class public Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;
.super Ljava/lang/Object;
.source "ErrorDialogModel.java"


# instance fields
.field private error:Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->error:Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    return-object v0
.end method

.method public setError(Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;->error:Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;

    .line 15
    return-void
.end method
