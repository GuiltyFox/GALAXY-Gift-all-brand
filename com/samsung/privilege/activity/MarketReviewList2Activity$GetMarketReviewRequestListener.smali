.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketReviewRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 488
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 489
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->gLoadMore:Z

    .line 490
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 498
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_44

    .line 500
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    new-instance v3, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_13} :catch_2a

    .line 537
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_13
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$6(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)V

    .line 542
    const-wide/16 v4, 0x3e8

    .line 537
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$7(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V

    .line 545
    return-void

    .line 530
    :catch_2a
    move-exception v0

    .line 531
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "buzzebees.MarketReview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetMarketReviewRequestListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 534
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_44
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_13
.end method
