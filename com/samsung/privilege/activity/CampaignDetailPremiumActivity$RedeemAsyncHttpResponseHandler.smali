.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedeemAsyncHttpResponseHandler"
.end annotation


# instance fields
.field private gCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private gIsGotoWebsite:Z

.field private gIsShowSerial:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;ZZ)V
    .registers 6
    .param p2, "campaign"    # Lcom/samsung/privilege/bean/CampaignView;
    .param p3, "isShowSerial"    # Z
    .param p4, "isGotoWebsite"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1729
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1726
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 1727
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 1730
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 1731
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 1732
    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 1733
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z
    .registers 2

    .prologue
    .line 1726
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z
    .registers 2

    .prologue
    .line 1727
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 1896
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 1897
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 1902
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 1738
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1742
    const-string v1, "campaign.detail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(RedeemListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1745
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1746
    .local v0, "date":Ljava/util/Date;
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_bc

    .line 1747
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=green>REDEEM_RS{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1753
    .end local v0    # "date":Ljava/util/Date;
    :cond_87
    :goto_87
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1755
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1888
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$9(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 1889
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$11(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    .line 1891
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$12(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 1892
    return-void

    .line 1749
    .restart local v0    # "date":Ljava/util/Date;
    :cond_bc
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=red>REDEEM_RS{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_87
.end method
