.class public Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;
.super Ljava/lang/Object;
.source "ReviewGiftSurveyModel.java"


# instance fields
.field private Active:Z

.field private AppId:Ljava/lang/Object;

.field private Body:Ljava/lang/String;

.field private CampaignId:Ljava/lang/Object;

.field private ETag:Ljava/lang/String;

.field private PartitionKey:Ljava/lang/String;

.field private RowKey:Ljava/lang/String;

.field private Timestamp:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->AppId:Ljava/lang/Object;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Body:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->CampaignId:Ljava/lang/Object;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->PartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->RowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Timestamp:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Active:Z

    return v0
.end method

.method public setActive(Z)V
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Active:Z

    .line 43
    return-void
.end method

.method public setAppId(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->AppId:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Body:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCampaignId(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->CampaignId:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->ETag:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->PartitionKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->RowKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTimestamp(I)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyModel;->Timestamp:I

    .line 55
    return-void
.end method
