.class public Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;
.super Ljava/lang/Object;
.source "ErrorDialogModel.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

.field private code:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->a:Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->code:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->id:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->message:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->message:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ErrorDialogModel$ErrorEntity;->type:Ljava/lang/String;

    .line 47
    return-void
.end method
