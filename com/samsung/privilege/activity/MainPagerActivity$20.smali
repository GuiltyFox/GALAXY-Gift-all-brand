.class Lcom/samsung/privilege/activity/MainPagerActivity$20;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->getPoints()V
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
    .line 1566
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->val$startTime:J

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1597
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1598
    .local v0, "endTime":J
    const-string/jumbo v2, "MainPager"

    const-string/jumbo v3, "getPoints"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1602
    .end local v0    # "endTime":J
    :goto_19
    return-void

    .line 1599
    :catch_1a
    move-exception v2

    goto :goto_19
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 16
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 1570
    :try_start_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1571
    .local v0, "endTime":J
    const-string/jumbo v7, "MainPager"

    const-string/jumbo v8, "getPoints"

    const-string/jumbo v9, "Success"

    iget-wide v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->val$startTime:J

    sub-long v10, v0, v10

    invoke-static {v7, v8, v9, v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_89

    .line 1576
    .end local v0    # "endTime":J
    :goto_19
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p3}, Ljava/lang/String;-><init>([B)V

    .line 1577
    .local v6, "response_text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(getPoints|onComplete)response_code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :try_start_46
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v7, "points"

    invoke-static {v3, v7}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1582
    .local v4, "points":J
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1584
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v8, Lcom/samsung/privilege/activity/MainPagerActivity$20$1;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$20$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$20;)V

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_65} :catch_66

    .line 1592
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "points":J
    :goto_65
    return-void

    .line 1589
    :catch_66
    move-exception v2

    .line 1590
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(getPoints|Exception):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 1572
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "response_text":Ljava/lang/String;
    :catch_89
    move-exception v7

    goto :goto_19
.end method
