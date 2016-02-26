.class public Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gID:I

.field private gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

.field private gStartTime:J

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;J)V
    .registers 6
    .param p2, "id"    # I
    .param p3, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;
    .param p4, "startTime"    # J

    .prologue
    .line 3794
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 3795
    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gID:I

    .line 3796
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 3797
    iput-wide p4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gStartTime:J

    .line 3798
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 3791
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 17
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 3802
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "response_code="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",response_text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    :try_start_1e
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 3806
    .local v8, "endTime":J
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gStartTime:J

    sub-long v2, v8, v0

    .line 3807
    .local v2, "spentTime":J
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$14(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "campaign_gift"

    const-string v4, "load"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gID:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_55} :catch_15f

    .line 3812
    .end local v2    # "spentTime":J
    .end local v8    # "endTime":J
    :goto_55
    const/4 v10, 0x0

    .line 3813
    .local v10, "isSameWithCache":Z
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$27(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$27(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 3814
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$27(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3815
    const/4 v10, 0x1

    .line 3819
    :cond_79
    if-nez v10, :cond_12c

    .line 3820
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_137

    .line 3822
    :try_start_7f
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3823
    .local v11, "jsonRoot":Lorg/json/JSONObject;
    new-instance v6, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v6, v11}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 3825
    .local v6, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-static {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$28(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;)V

    .line 3848
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v1, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 3849
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3850
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "campaign_id"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3851
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3853
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 3905
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    :goto_d9
    return-void

    .line 3864
    .restart local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .restart local v11    # "jsonRoot":Lorg/json/JSONObject;
    :cond_da
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3870
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 3871
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "campaign_detail-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "campaign_detail-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_12c} :catch_15d

    .line 3894
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d9

    .line 3880
    :cond_137
    :try_start_137
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$14(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Gift|CampaignDetailActivity|GetCampaignListener|"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_150} :catch_15b

    .line 3885
    :goto_150
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12c

    .line 3881
    :catch_15b
    move-exception v0

    goto :goto_150

    .line 3874
    :catch_15d
    move-exception v0

    goto :goto_12c

    .line 3808
    .end local v10    # "isSameWithCache":Z
    :catch_15f
    move-exception v0

    goto/16 :goto_55
.end method
