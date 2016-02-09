.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

.field private final synthetic val$jsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 767
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->gLoadMore:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 768
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/util/ArrayList;)V

    .line 771
    :cond_16
    const/4 v2, 0x0

    .line 772
    .local v2, "isFoundStream":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_43

    .line 783
    if-eqz v2, :cond_79

    .line 784
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    .line 785
    const-string v4, "buzzebees.MarketReview"

    const-string v5, "gIsHaveMoreData = true;"

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :goto_33
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->gLoadMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Z

    move-result v5

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->setLayoutByReview(Z)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$6(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    .line 792
    return-void

    .line 774
    :cond_43
    :try_start_43
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 776
    .local v3, "json_market_review":Lorg/json/JSONObject;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v5, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_5b} :catch_5f

    .line 777
    const/4 v2, 0x1

    .line 772
    .end local v3    # "json_market_review":Lorg/json/JSONObject;
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 778
    :catch_5f
    move-exception v0

    .line 779
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "buzzebees.MarketReview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 787
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_79
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$5(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    .line 788
    const-string v4, "buzzebees.MarketReview"

    const-string v5, "gIsHaveMoreData = false;"

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method
