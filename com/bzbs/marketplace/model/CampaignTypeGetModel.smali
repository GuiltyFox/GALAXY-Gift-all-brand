.class public Lcom/bzbs/marketplace/model/CampaignTypeGetModel;
.super Ljava/lang/Object;
.source "CampaignTypeGetModel.java"


# instance fields
.field private AgencyId:I

.field private CampaignId:I

.field private CatId:I

.field private ConditionAlert:Ljava/lang/String;

.field private CurrentDate:I

.field private IsConditionPass:Z

.field private IsNotAutoUse:Z

.field private ItemNumber:I

.field private Name:Ljava/lang/String;

.field private NextRedeemDate:Ljava/lang/String;

.field private PointType:Ljava/lang/String;

.field private PrivilegeMessage:Ljava/lang/String;

.field private Qty:D

.field private RedeemCount:I

.field private Serial:Ljava/lang/String;

.field private Url:Ljava/lang/String;

.field private UseCount:I

.field private buzzebees:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgencyId()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->AgencyId:I

    return v0
.end method

.method public getBuzzebees()Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->buzzebees:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getCampaignId()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CampaignId:I

    return v0
.end method

.method public getCatId()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CatId:I

    return v0
.end method

.method public getConditionAlert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->ConditionAlert:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CurrentDate:I

    return v0
.end method

.method public getItemNumber()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->ItemNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRedeemDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->NextRedeemDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPointType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->PointType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()D
    .registers 3

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Qty:D

    return-wide v0
.end method

.method public getRedeemCount()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->RedeemCount:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCount()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->UseCount:I

    return v0
.end method

.method public isIsConditionPass()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->IsConditionPass:Z

    return v0
.end method

.method public isIsNotAutoUse()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->IsNotAutoUse:Z

    return v0
.end method

.method public setAgencyId(I)V
    .registers 2

    .prologue
    .line 51
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->AgencyId:I

    .line 52
    return-void
.end method

.method public setBuzzebees(Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->buzzebees:Lcom/bzbs/marketplace/model/CampaignTypeGetModel$BuzzebeesEntity;

    .line 48
    return-void
.end method

.method public setCampaignId(I)V
    .registers 2

    .prologue
    .line 95
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CampaignId:I

    .line 96
    return-void
.end method

.method public setCatId(I)V
    .registers 2

    .prologue
    .line 71
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CatId:I

    .line 72
    return-void
.end method

.method public setConditionAlert(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->ConditionAlert:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2

    .prologue
    .line 115
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->CurrentDate:I

    .line 116
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->IsConditionPass:Z

    .line 112
    return-void
.end method

.method public setIsNotAutoUse(Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->IsNotAutoUse:Z

    .line 56
    return-void
.end method

.method public setItemNumber(I)V
    .registers 2

    .prologue
    .line 87
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->ItemNumber:I

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setNextRedeemDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->NextRedeemDate:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPointType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->PointType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->PrivilegeMessage:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setQty(D)V
    .registers 4

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Qty:D

    .line 104
    return-void
.end method

.method public setRedeemCount(I)V
    .registers 2

    .prologue
    .line 99
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->RedeemCount:I

    .line 100
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Serial:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->Url:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUseCount(I)V
    .registers 2

    .prologue
    .line 59
    iput p1, p0, Lcom/bzbs/marketplace/model/CampaignTypeGetModel;->UseCount:I

    .line 60
    return-void
.end method
