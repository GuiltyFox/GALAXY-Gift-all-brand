.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostReviewOfReviewListener"
.end annotation


# instance fields
.field private gStrText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "pStrText"    # Ljava/lang/String;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 685
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->gStrText:Ljava/lang/String;

    .line 688
    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->gStrText:Ljava/lang/String;

    .line 689
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 750
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->onSuccess(ILjava/lang/String;)V

    .line 751
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(PostReviewOfReviewListener|onComplete)response={"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_52

    .line 695
    const/16 v8, 0xc8

    if-ne p1, v8, :cond_5c

    .line 698
    :try_start_2e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 699
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v4, Lcom/samsung/privilege/bean/MarketReview;

    invoke-direct {v4, v2}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    .line 701
    .local v4, "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v9, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;

    invoke-direct {v9, p0, v4}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;Lcom/samsung/privilege/bean/MarketReview;)V

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 713
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$7(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Z)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_48} :catch_53

    .line 737
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    :goto_48
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v9, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)V

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    :cond_52
    return-void

    .line 714
    :catch_53
    move-exception v0

    .line 715
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const-string v9, "Error while post!"

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_48

    .line 720
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5c
    const-string v6, ""

    .line 721
    .local v6, "strError":Ljava/lang/String;
    const-string v5, ""

    .line 722
    .local v5, "strCode":Ljava/lang/String;
    const-string v7, ""

    .line 725
    .local v7, "strType":Ljava/lang/String;
    :try_start_62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 726
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 727
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-static {v3, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    const-string v8, "code"

    invoke-static {v3, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 729
    const-string v8, "type"

    invoke-static {v3, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_9c

    move-result-object v7

    .line 734
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_error":Lorg/json/JSONObject;
    :goto_7f
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_48

    .line 730
    :catch_9c
    move-exception v1

    .line 731
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7f
.end method
