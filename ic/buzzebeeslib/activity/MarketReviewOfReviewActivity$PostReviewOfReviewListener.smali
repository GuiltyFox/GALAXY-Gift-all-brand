.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostReviewOfReviewListener"
.end annotation


# instance fields
.field private gStrText:Ljava/lang/String;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "pStrText"    # Ljava/lang/String;

    .prologue
    .line 727
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 725
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->gStrText:Ljava/lang/String;

    .line 728
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->gStrText:Ljava/lang/String;

    .line 729
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 783
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->onSuccess(ILjava/lang/String;)V

    .line 784
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 733
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(PostReviewOfReviewListener|onComplete)response={"

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

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_52

    .line 735
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_5c

    .line 738
    :try_start_2e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 739
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v4, v2}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    .line 741
    .local v4, "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;

    invoke-direct {v6, p0, v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;Lic/buzzebeeslib/bean/CampaignReview;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 753
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$6(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_48} :catch_53

    .line 770
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_48
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 778
    :cond_52
    return-void

    .line 754
    :catch_53
    move-exception v0

    .line 755
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const-string v6, "Error while post!"

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_48

    .line 758
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5c
    const-string v1, ""

    .line 760
    .local v1, "err_message":Ljava/lang/String;
    :try_start_5e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 761
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 762
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v5, "message"

    invoke-static {v3, v5}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6e} :catch_75

    move-result-object v1

    .line 767
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_error":Lorg/json/JSONObject;
    :goto_6f
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v5, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_48

    .line 763
    :catch_75
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v6, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f
.end method
