.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketReviewRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 873
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 874
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->gLoadMore:Z

    .line 875
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Z
    .registers 2

    .prologue
    .line 871
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 940
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 941
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->onSuccess(ILjava/lang/String;)V

    .line 942
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 879
    const-string v2, "buzzebees.MarketReview"

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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_59

    .line 881
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_74

    .line 883
    :try_start_2a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 884
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$1;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_5a

    .line 920
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_39
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)V

    .line 925
    const-wide/16 v4, 0x3e8

    .line 920
    invoke-virtual {v2, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$3;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 933
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$10(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V

    .line 936
    :cond_59
    return-void

    .line 913
    :catch_5a
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "buzzebees.MarketReview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetMarketReviewRequestListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_74
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_39
.end method
