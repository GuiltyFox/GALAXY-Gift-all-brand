.class public Lcom/bzbs/marketplace/model/FriendWinnerModel;
.super Ljava/lang/Object;
.source "FriendWinnerModel.java"


# instance fields
.field private CampaignID:I

.field private CreateBy:Ljava/lang/String;

.field private CreateDate:I

.field private ID:I

.field private ModifyBy:Ljava/lang/String;

.field private ModifyDate:I

.field private Reward:Ljava/lang/String;

.field private Type:I

.field private User:Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;

.field private UserId:Ljava/lang/String;

.field private Value:I

.field private WinningDate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignID()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CampaignID:I

    return v0
.end method

.method public getCreateBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CreateBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CreateDate:I

    return v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ID:I

    return v0
.end method

.method public getModifyBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ModifyBy:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ModifyDate:I

    return v0
.end method

.method public getReward()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Reward:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Type:I

    return v0
.end method

.method public getUser()Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->User:Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Value:I

    return v0
.end method

.method public getWinningDate()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->WinningDate:I

    return v0
.end method

.method public setCampaignID(I)V
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CampaignID:I

    .line 45
    return-void
.end method

.method public setCreateBy(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CreateBy:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCreateDate(I)V
    .registers 2

    .prologue
    .line 76
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->CreateDate:I

    .line 77
    return-void
.end method

.method public setID(I)V
    .registers 2

    .prologue
    .line 64
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ID:I

    .line 65
    return-void
.end method

.method public setModifyBy(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ModifyBy:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2

    .prologue
    .line 52
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->ModifyDate:I

    .line 53
    return-void
.end method

.method public setReward(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Reward:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 36
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Type:I

    .line 37
    return-void
.end method

.method public setUser(Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->User:Lcom/bzbs/marketplace/model/FriendWinnerModel$UserEntity;

    .line 41
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->UserId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setValue(I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->Value:I

    .line 61
    return-void
.end method

.method public setWinningDate(I)V
    .registers 2

    .prologue
    .line 80
    iput p1, p0, Lcom/bzbs/marketplace/model/FriendWinnerModel;->WinningDate:I

    .line 81
    return-void
.end method
