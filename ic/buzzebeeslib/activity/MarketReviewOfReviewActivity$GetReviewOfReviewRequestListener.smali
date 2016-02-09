.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetReviewOfReviewRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 1381
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1382
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z

    .line 1383
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z
    .registers 2

    .prologue
    .line 1379
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1377
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1481
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1482
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->onSuccess(ILjava/lang/String;)V

    .line 1483
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1387
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetMarketReviewRequestListener|onComplete)response={"

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1389
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_6c

    .line 1391
    :try_start_2e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3d} :catch_4e

    .line 1445
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_3d
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1474
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$29(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 1477
    :cond_4d
    return-void

    .line 1431
    :catch_4e
    move-exception v0

    .line 1432
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetMarketReviewRequestListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1435
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6c
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3d
.end method
