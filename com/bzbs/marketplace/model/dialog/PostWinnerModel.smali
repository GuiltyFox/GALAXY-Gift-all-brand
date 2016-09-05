.class public Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;
.super Ljava/lang/Object;
.source "PostWinnerModel.java"


# instance fields
.field private HasWinner:Z

.field private IsWinner:Z

.field private Serial:Ljava/lang/String;

.field private WinnerMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getWinnerMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->WinnerMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isHasWinner()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->HasWinner:Z

    return v0
.end method

.method public isWinner()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->IsWinner:Z

    return v0
.end method

.method public setHasWinner(Z)V
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->HasWinner:Z

    .line 27
    return-void
.end method

.method public setIsWinner(Z)V
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->IsWinner:Z

    .line 35
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->Serial:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setWinnerMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/PostWinnerModel;->WinnerMessage:Ljava/lang/String;

    .line 31
    return-void
.end method
