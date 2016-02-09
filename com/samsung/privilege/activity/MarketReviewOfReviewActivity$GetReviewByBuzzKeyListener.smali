.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetReviewByBuzzKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V
    .registers 3

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1164
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->onSuccess(ILjava/lang/String;)V

    .line 1165
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1139
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetReviewByBuzzKeyListener|onComplete)response={"

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

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_47

    .line 1141
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_66

    .line 1143
    :try_start_2e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v3, Lcom/samsung/privilege/bean/MarketReview;

    invoke-direct {v3, v1}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$11(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/MarketReview;)V

    .line 1146
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v3, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_47} :catch_48

    .line 1159
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    :cond_47
    :goto_47
    return-void

    .line 1152
    :catch_48
    move-exception v0

    .line 1153
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|GetReviewByBuzzKeyListener|onComplete): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 1156
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_66
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const-string v3, "Error while load review!"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method
