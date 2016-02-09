.class public Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RedeemListener"
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

    .line 953
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 950
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsShowSerial:Z

    .line 951
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsGotoWebsite:Z

    .line 954
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 955
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsShowSerial:Z

    .line 956
    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsGotoWebsite:Z

    .line 957
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z
    .registers 2

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsShowSerial:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z
    .registers 2

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsGotoWebsite:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 961
    const-string v2, "campaign.detail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(RedeemListener|onComplete)response={"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 964
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 965
    .local v0, "date":Ljava/util/Date;
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_cc

    .line 966
    const-string v2, "REDEEM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=green>REDEEM_RS{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}:code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 972
    .end local v0    # "date":Ljava/util/Date;
    :cond_87
    :goto_87
    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "response_text_final":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 976
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1090
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$9(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 1091
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$11(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    .line 1093
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$12(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 1094
    return-void

    .line 968
    .end local v1    # "response_text_final":Ljava/lang/String;
    .restart local v0    # "date":Ljava/util/Date;
    :cond_cc
    const-string v2, "REDEEM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=red>REDEEM_RS{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}:code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_87
.end method
