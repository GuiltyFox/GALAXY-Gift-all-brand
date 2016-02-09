.class public Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 623
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 626
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(GetCampaignListener|onComplete)response={"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v5, "onComplete"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, " !isFinishing() "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_86

    const/4 v4, 0x0

    :goto_34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_85

    .line 630
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_91

    .line 632
    :try_start_4b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 633
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    new-instance v1, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v1, v3}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 635
    .local v1, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-static {v4, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/Campaign;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_88

    .line 638
    :try_start_5a
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "cache_name":Ljava/lang/String;
    if-eqz v0, :cond_71

    .line 640
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_71} :catch_99

    .line 646
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_71
    :goto_71
    :try_start_71
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7b} :catch_88

    .line 661
    .end local v1    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :goto_7b
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$2;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 667
    :cond_85
    return-void

    .line 628
    :cond_86
    const/4 v4, 0x1

    goto :goto_34

    .line 654
    :catch_88
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v5, "Invalid campaign data format!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_7b

    .line 658
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_91
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    const-string v5, "Can not get campaign data!"

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_7b

    .line 642
    .restart local v1    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    :catch_99
    move-exception v4

    goto :goto_71
.end method
