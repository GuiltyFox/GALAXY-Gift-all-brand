.class public Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RedeemListenerXXX"
.end annotation


# instance fields
.field private gCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private gIsGotoWebsite:Z

.field private gIsShowSerial:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZ)V
    .registers 6
    .param p2, "campaign"    # Lcom/samsung/privilege/bean/CampaignView;
    .param p3, "isShowSerial"    # Z
    .param p4, "isGotoWebsite"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1137
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 1134
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsShowSerial:Z

    .line 1135
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsGotoWebsite:Z

    .line 1138
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 1139
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsShowSerial:Z

    .line 1140
    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsGotoWebsite:Z

    .line 1141
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Z
    .registers 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsShowSerial:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Z
    .registers 2

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsGotoWebsite:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1145
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

    .line 1147
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1148
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1149
    .local v0, "date":Ljava/util/Date;
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_cc

    .line 1150
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

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

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

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1156
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

    .line 1158
    .local v1, "response_text_final":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1160
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1274
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$9(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 1275
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$11(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    .line 1277
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$12(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 1278
    return-void

    .line 1152
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

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

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

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_87
.end method
