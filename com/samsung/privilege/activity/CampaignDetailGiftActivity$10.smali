.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 805
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 784
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 785
    .local v1, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(getPoints|onComplete)response_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :try_start_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v4, "points"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 790
    .local v2, "points":J
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 792
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4a} :catch_4b

    .line 800
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "points":J
    :goto_4a
    return-void

    .line 797
    :catch_4b
    move-exception v4

    goto :goto_4a
.end method
