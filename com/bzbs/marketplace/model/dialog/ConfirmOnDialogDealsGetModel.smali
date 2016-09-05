.class public Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;
.super Ljava/lang/Object;
.source "ConfirmOnDialogDealsGetModel.java"


# instance fields
.field private CampaignId:I

.field private ExpireIn:J

.field private ItemNumber:I

.field private PrivilegeMessage:Ljava/lang/String;

.field private RedeemCount:I

.field private Serial:Ljava/lang/String;

.field private UseCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignId()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->CampaignId:I

    return v0
.end method

.method public getExpireIn()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->ExpireIn:J

    return-wide v0
.end method

.method public getItemNumber()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->ItemNumber:I

    return v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemCount()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->RedeemCount:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCount()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->UseCount:I

    return v0
.end method

.method public setCampaignId(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->CampaignId:I

    .line 35
    return-void
.end method

.method public setExpireIn(J)V
    .registers 4

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->ExpireIn:J

    .line 51
    return-void
.end method

.method public setItemNumber(I)V
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->ItemNumber:I

    .line 31
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->PrivilegeMessage:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRedeemCount(I)V
    .registers 2

    .prologue
    .line 38
    iput p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->RedeemCount:I

    .line 39
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->Serial:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUseCount(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;->UseCount:I

    .line 43
    return-void
.end method
