.class public Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;
.super Ljava/lang/Object;
.source "ConditionDrawSuccessModel.java"


# instance fields
.field private AgencyId:Ljava/lang/String;

.field private CampaignId:Ljava/lang/String;

.field private CatId:Ljava/lang/String;

.field private ConditionAlert:Ljava/lang/String;

.field private CurrentDate:Ljava/lang/String;

.field private IsConditionPass:Z

.field private ItemNumber:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private NextRedeemDate:Ljava/lang/String;

.field private PoStrings:Ljava/lang/String;

.field private PrivilegeMessage:Ljava/lang/String;

.field private Qty:Ljava/lang/String;

.field private RedeemCount:Ljava/lang/String;

.field private Serial:Ljava/lang/String;

.field private UseCount:Ljava/lang/String;

.field private updated_poStrings:Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel$Updated_poStringsEntity;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->AgencyId:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->UseCount:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PrivilegeMessage:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->NextRedeemDate:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CatId:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Name:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Serial:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PoStrings:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ItemNumber:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ConditionAlert:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CampaignId:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->RedeemCount:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Qty:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->IsConditionPass:Z

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CurrentDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgencyId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->AgencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CatId:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionAlert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ConditionAlert:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ItemNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRedeemDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->NextRedeemDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPoStrings()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PoStrings:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Qty:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->RedeemCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_poStrings()Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel$Updated_poStringsEntity;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->updated_poStrings:Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel$Updated_poStringsEntity;

    return-object v0
.end method

.method public getUseCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->UseCount:Ljava/lang/String;

    return-object v0
.end method

.method public isIsConditionPass()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->IsConditionPass:Z

    return v0
.end method

.method public setAgencyId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->AgencyId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CampaignId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCatId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CatId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setConditionAlert(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ConditionAlert:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCurrentDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->CurrentDate:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->IsConditionPass:Z

    .line 101
    return-void
.end method

.method public setItemNumber(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->ItemNumber:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setNextRedeemDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->NextRedeemDate:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPoStrings(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PoStrings:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->PrivilegeMessage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setQty(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Qty:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRedeemCount(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->RedeemCount:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->Serial:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUpdated_poStrings(Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel$Updated_poStringsEntity;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->updated_poStrings:Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel$Updated_poStringsEntity;

    .line 77
    return-void
.end method

.method public setUseCount(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConditionDrawSuccessModel;->UseCount:Ljava/lang/String;

    .line 49
    return-void
.end method
