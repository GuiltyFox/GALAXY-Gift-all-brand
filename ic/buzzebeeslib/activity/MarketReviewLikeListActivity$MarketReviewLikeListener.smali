.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewLikeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketReviewLikeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V
    .registers 3

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    return-object v0
.end method


# virtual methods
.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 217
    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(MarketReviewLikeListener|onComplete)response={"

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

    .line 219
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_52

    .line 221
    :try_start_28
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/util/ArrayList;)V

    .line 223
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, "jsonRoot":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_84

    move-result v5

    if-lt v2, v5, :cond_53

    .line 237
    .end local v2    # "i":I
    .end local v4    # "jsonRoot":Lorg/json/JSONArray;
    :goto_3e
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    new-instance v6, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$2;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    :cond_52
    return-void

    .line 226
    .restart local v2    # "i":I
    .restart local v4    # "jsonRoot":Lorg/json/JSONArray;
    :cond_53
    :try_start_53
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 228
    .local v3, "jsonMarketReviewLike":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gMarketReviewLikes:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/CampaignReviewLike;

    invoke-direct {v6, v3}, Lic/buzzebeeslib/bean/CampaignReviewLike;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_65} :catch_68
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_65} :catch_84

    .line 224
    .end local v3    # "jsonMarketReviewLike":Lorg/json/JSONObject;
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 229
    :catch_68
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    :try_start_69
    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(MarketReviewLikeListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_83} :catch_84

    goto :goto_65

    .line 233
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonRoot":Lorg/json/JSONArray;
    :catch_84
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Exception;
    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(initialLayoutByCatch|step1):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method
