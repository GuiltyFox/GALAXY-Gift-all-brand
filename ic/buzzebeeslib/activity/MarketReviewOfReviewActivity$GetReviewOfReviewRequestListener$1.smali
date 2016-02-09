.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

.field private final synthetic val$jsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1394
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1395
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$15(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    .line 1398
    :cond_16
    const/4 v2, 0x0

    .line 1399
    .local v2, "isFoundStream":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_67

    .line 1415
    if-eqz v2, :cond_c2

    .line 1416
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$16(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 1418
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1419
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$17(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)I

    move-result v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$18(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;I)V

    .line 1422
    :cond_48
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gIsHaveMoreData = true;"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :goto_57
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v5

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->setLayoutByReview(Z)V
    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$19(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 1429
    return-void

    .line 1401
    :cond_67
    :try_start_67
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1403
    .local v3, "json_market_review":Lorg/json/JSONObject;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 1404
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v5, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    :goto_87
    const/4 v2, 0x1

    .line 1399
    .end local v3    # "json_market_review":Lorg/json/JSONObject;
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1406
    .restart local v3    # "json_market_review":Lorg/json/JSONObject;
    :cond_8b
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v1, 0x0

    new-instance v6, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v6, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_9f} :catch_a0

    goto :goto_87

    .line 1410
    .end local v3    # "json_market_review":Lorg/json/JSONObject;
    :catch_a0
    move-exception v0

    .line 1411
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v4

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

    goto :goto_88

    .line 1424
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_c2
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$16(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 1425
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gIsHaveMoreData = false;"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57
.end method
