.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketReviewRequestListener"
.end annotation


# instance fields
.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V
    .registers 3
    .param p2, "pLoadMore"    # Z

    .prologue
    .line 754
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 755
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->gLoadMore:Z

    .line 756
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Z
    .registers 2

    .prologue
    .line 752
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 760
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

    .line 761
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_59

    .line 762
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_74

    .line 764
    :try_start_2a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_39} :catch_5a

    .line 801
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_39
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)V

    .line 806
    const-wide/16 v4, 0x3e8

    .line 801
    invoke-virtual {v2, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$3;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 814
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    .line 817
    :cond_59
    return-void

    .line 794
    :catch_5a
    move-exception v0

    .line 795
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 798
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_74
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v3, "Connection Error!"

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_39
.end method
