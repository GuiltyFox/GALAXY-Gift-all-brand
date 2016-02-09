.class public Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "CampaignDetailAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1054
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1057
    const-string v5, "campaign.ad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v6, "onComplete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, " !isFinishing() "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_82

    const/4 v5, 0x0

    :goto_30
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_81

    .line 1061
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_81

    .line 1063
    :try_start_47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    new-instance v1, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v1, v3}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 1070
    .local v1, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-static {v5, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$6(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/Campaign;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_84

    .line 1073
    :try_start_56
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "cache_name":Ljava/lang/String;
    if-eqz v0, :cond_6d

    .line 1075
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6d} :catch_b2

    .line 1081
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v6, Lic/buzzebeeslib/R$idCampaignDetailAd;->pbLoadingAds:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 1082
    .local v4, "pbLoadingAds":Landroid/widget/ProgressBar;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    new-instance v6, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;

    invoke-direct {v6, p0, v4, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;Landroid/widget/ProgressBar;I)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_81} :catch_84

    .line 1134
    .end local v1    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "pbLoadingAds":Landroid/widget/ProgressBar;
    :cond_81
    :goto_81
    return-void

    .line 1059
    :cond_82
    const/4 v5, 0x1

    goto :goto_30

    .line 1122
    :catch_84
    move-exception v2

    .line 1123
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 1124
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid campaign data format!\r\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_81

    .line 1126
    :cond_aa
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v6, "Invalid campaign data format!"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    goto :goto_81

    .line 1077
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    :catch_b2
    move-exception v5

    goto :goto_6d
.end method
