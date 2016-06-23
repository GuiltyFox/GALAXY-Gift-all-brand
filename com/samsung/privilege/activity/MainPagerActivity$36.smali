.class Lcom/samsung/privilege/activity/MainPagerActivity$36;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->loadCampaignCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->val$startTime:J

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 2127
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2128
    .local v2, "endTime":J
    const-string/jumbo v4, "MainPager"

    const-string/jumbo v5, "loadPager"

    const-string/jumbo v6, "Failure"

    iget-wide v8, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->val$startTime:J

    sub-long v8, v2, v8

    invoke-static {v4, v5, v6, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_6b

    .line 2134
    .end local v2    # "endTime":J
    :goto_19
    :try_start_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 2135
    .local v1, "response_text":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(loadCampaignCategory|onFailure)response_code="

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

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_4c

    .line 2140
    .end local v1    # "response_text":Ljava/lang/String;
    :goto_46
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v4, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 2141
    return-void

    .line 2136
    :catch_4c
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(loadCampaignCategory|onFailure)response_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 2129
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v4

    goto :goto_19
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 14
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 2087
    :try_start_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2088
    .local v2, "endTime":J
    const-string/jumbo v5, "MainPager"

    const-string/jumbo v6, "loadPager"

    const-string/jumbo v7, "Success"

    iget-wide v8, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->val$startTime:J

    sub-long v8, v2, v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_a9

    .line 2093
    .end local v2    # "endTime":J
    :goto_19
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 2096
    .local v4, "response_text":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(loadCampaignCategory|onComplete)response_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :try_start_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cache_category_gift_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, "cacheName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2101
    .local v1, "catch_category":Ljava/lang/String;
    if-eqz v1, :cond_9e

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 2102
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_99} :catch_9d

    move-result v5

    if-eqz v5, :cond_9e

    .line 2122
    .end local v0    # "cacheName":Ljava/lang/String;
    .end local v1    # "catch_category":Ljava/lang/String;
    :goto_9c
    return-void

    .line 2106
    :catch_9d
    move-exception v5

    .line 2110
    :cond_9e
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$36;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;

    invoke-direct {v6, p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity$36$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$36;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9c

    .line 2089
    .end local v4    # "response_text":Ljava/lang/String;
    :catch_a9
    move-exception v5

    goto/16 :goto_19
.end method
