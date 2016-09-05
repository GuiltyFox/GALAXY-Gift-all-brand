.class public Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;
.super Ljava/lang/Object;
.source "SharePointMarketModel.java"


# instance fields
.field private buzzebees:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;

.field private condition:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuzzebees()Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->buzzebees:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setBuzzebees(Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->buzzebees:Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;

    .line 28
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->condition:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->id:Ljava/lang/String;

    .line 20
    return-void
.end method
