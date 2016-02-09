.class public Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 574
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 605
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->onSuccess(ILjava/lang/String;)V

    .line 606
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 577
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

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_48

    .line 580
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_52

    .line 582
    :try_start_2a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v0, v2}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 585
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-static {v3, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/Campaign;)V

    .line 586
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->setLayoutByCatch()V
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_49

    .line 594
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_3e
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v4, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    :cond_48
    return-void

    .line 587
    :catch_49
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 591
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_52
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_3e
.end method
