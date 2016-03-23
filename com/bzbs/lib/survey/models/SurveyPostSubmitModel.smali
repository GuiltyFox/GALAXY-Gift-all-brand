.class public Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;
.super Ljava/lang/Object;
.source "SurveyPostSubmitModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;
    }
.end annotation


# instance fields
.field private AdsMessage:Ljava/lang/String;

.field private AgencyId:I

.field private CampaignId:I

.field private CatId:I

.field private ConditionAlert:Ljava/lang/Object;

.field private CurrentDate:I

.field private IsConditionPass:Z

.field private IsNotAutoUse:Z

.field private ItemNumber:I

.field private Name:Ljava/lang/String;

.field private NextRedeemDate:Ljava/lang/Object;

.field private PointType:Ljava/lang/Object;

.field private PrivilegeMessage:Ljava/lang/String;

.field private Qty:I

.field private RedeemCount:I

.field private RedeemKey:Ljava/lang/String;

.field private Serial:Ljava/lang/String;

.field private UseCount:I

.field private buzzebees:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->AdsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAgencyId()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->AgencyId:I

    return v0
.end method

.method public getBuzzebees()Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->buzzebees:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;

    return-object v0
.end method

.method public getCampaignId()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CampaignId:I

    return v0
.end method

.method public getCatId()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CatId:I

    return v0
.end method

.method public getConditionAlert()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->ConditionAlert:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CurrentDate:I

    return v0
.end method

.method public getItemNumber()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->ItemNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRedeemDate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->NextRedeemDate:Ljava/lang/Object;

    return-object v0
.end method

.method public getPointType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->PointType:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Qty:I

    return v0
.end method

.method public getRedeemCount()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->RedeemCount:I

    return v0
.end method

.method public getRedeemKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->RedeemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCount()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->UseCount:I

    return v0
.end method

.method public isIsConditionPass()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->IsConditionPass:Z

    return v0
.end method

.method public isIsNotAutoUse()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->IsNotAutoUse:Z

    return v0
.end method

.method public setAdsMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "AdsMessage"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->AdsMessage:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setAgencyId(I)V
    .registers 2
    .param p1, "AgencyId"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->AgencyId:I

    .line 73
    return-void
.end method

.method public setBuzzebees(Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;)V
    .registers 2
    .param p1, "buzzebees"    # Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->buzzebees:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel$BuzzebeesEntity;

    .line 133
    return-void
.end method

.method public setCampaignId(I)V
    .registers 2
    .param p1, "CampaignId"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CampaignId:I

    .line 61
    return-void
.end method

.method public setCatId(I)V
    .registers 2
    .param p1, "CatId"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CatId:I

    .line 77
    return-void
.end method

.method public setConditionAlert(Ljava/lang/Object;)V
    .registers 2
    .param p1, "ConditionAlert"    # Ljava/lang/Object;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->ConditionAlert:Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2
    .param p1, "CurrentDate"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->CurrentDate:I

    .line 89
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2
    .param p1, "IsConditionPass"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->IsConditionPass:Z

    .line 109
    return-void
.end method

.method public setIsNotAutoUse(Z)V
    .registers 2
    .param p1, "IsNotAutoUse"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->IsNotAutoUse:Z

    .line 117
    return-void
.end method

.method public setItemNumber(I)V
    .registers 2
    .param p1, "ItemNumber"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->ItemNumber:I

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setNextRedeemDate(Ljava/lang/Object;)V
    .registers 2
    .param p1, "NextRedeemDate"    # Ljava/lang/Object;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->NextRedeemDate:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setPointType(Ljava/lang/Object;)V
    .registers 2
    .param p1, "PointType"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->PointType:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "PrivilegeMessage"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->PrivilegeMessage:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setQty(I)V
    .registers 2
    .param p1, "Qty"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Qty:I

    .line 105
    return-void
.end method

.method public setRedeemCount(I)V
    .registers 2
    .param p1, "RedeemCount"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->RedeemCount:I

    .line 97
    return-void
.end method

.method public setRedeemKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "RedeemKey"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->RedeemKey:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2
    .param p1, "Serial"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->Serial:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUseCount(I)V
    .registers 2
    .param p1, "UseCount"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;->UseCount:I

    .line 101
    return-void
.end method
