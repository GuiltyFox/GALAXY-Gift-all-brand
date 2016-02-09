.class Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedeemAsyncHttpResponseHandler"
.end annotation


# instance fields
.field private gCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private gIsGotoWebsite:Z

.field private gIsShowSerial:Z

.field private gStartTime:J

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V
    .registers 8
    .param p2, "campaign"    # Lcom/samsung/privilege/bean/CampaignView;
    .param p3, "isShowSerial"    # Z
    .param p4, "isGotoWebsite"    # Z
    .param p5, "startTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 1976
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1972
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 1973
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 1977
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 1978
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 1979
    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 1980
    iput-wide p5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gStartTime:J

    .line 1981
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z
    .registers 2

    .prologue
    .line 1972
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z
    .registers 2

    .prologue
    .line 1973
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 2177
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 2178
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 2183
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 1986
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1990
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "(RedeemListener|onComplete)response={"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    :try_start_1e
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 1994
    .local v7, "endTime":J
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gStartTime:J

    sub-long v2, v7, v0

    .line 1995
    .local v2, "spentTime":J
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$14(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "redeem"

    const-string v4, "submit"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_53} :catch_15b

    .line 2000
    .end local v2    # "spentTime":J
    .end local v7    # "endTime":J
    :goto_53
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2001
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 2002
    .local v6, "date":Ljava/util/Date;
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_105

    .line 2003
    const-string v0, "REDEEM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "<font color=green>REDEEM_RS{"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}:code="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</font><br>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2009
    .end local v6    # "date":Ljava/util/Date;
    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2011
    if-nez p2, :cond_c9

    .line 2012
    const-string p2, ""

    .line 2015
    :cond_c9
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v4, "&gt;"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2017
    .local v9, "response_text_final":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;

    invoke-direct {v1, p0, p1, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2169
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$9(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2170
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    invoke-static {v0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$11(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    .line 2172
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$12(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 2173
    return-void

    .line 2005
    .end local v9    # "response_text_final":Ljava/lang/String;
    .restart local v6    # "date":Ljava/util/Date;
    :cond_105
    const-string v0, "REDEEM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "<font color=red>REDEEM_RS{"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "}:code="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</font><br>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_bc

    .line 1996
    .end local v6    # "date":Ljava/util/Date;
    :catch_15b
    move-exception v0

    goto/16 :goto_53
.end method
