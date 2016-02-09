.class public Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 2

    .prologue
    .line 553
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 556
    const-string v3, "buzzebees.market"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(GetCampaignListener|onComplete)response={"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_48

    .line 559
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_52

    .line 561
    :try_start_2a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 562
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v0, v2}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 564
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-static {v3, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/bean/Campaign;)V

    .line 565
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByCatch()V
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_49

    .line 573
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_3e
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    :cond_48
    return-void

    .line 566
    :catch_49
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 570
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_52
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3e
.end method
