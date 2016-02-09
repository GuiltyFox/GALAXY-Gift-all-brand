.class Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

.field private final synthetic val$jsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 759
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->gLoadMore:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 760
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$2(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/util/ArrayList;)V

    .line 763
    :cond_16
    const/4 v2, 0x0

    .line 764
    .local v2, "isFoundStream":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_43

    .line 775
    if-eqz v2, :cond_79

    .line 776
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$4(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    .line 777
    const-string v4, "buzzebees.MarketReview"

    const-string v5, "gIsHaveMoreData = true;"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_33
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->gLoadMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Z

    move-result v5

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByReview(Z)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$5(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    .line 784
    return-void

    .line 766
    :cond_43
    :try_start_43
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 768
    .local v3, "json_market_review":Lorg/json/JSONObject;
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v5, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_5b} :catch_5f

    .line 769
    const/4 v2, 0x1

    .line 764
    .end local v3    # "json_market_review":Lorg/json/JSONObject;
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 770
    :catch_5f
    move-exception v0

    .line 771
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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 779
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_79
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$4(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    .line 780
    const-string v4, "buzzebees.MarketReview"

    const-string v5, "gIsHaveMoreData = false;"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
