.class Lcom/samsung/privilege/activity/MainPagerActivity$20;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V
    .registers 4

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1656
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1659
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1660
    const-string/jumbo v2, "MainPager"

    const-string/jumbo v3, "getPoints"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 1664
    :goto_1b
    return-void

    .line 1661
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1631
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1632
    const-string/jumbo v2, "MainPager"

    const-string/jumbo v3, "getPoints"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_83

    .line 1637
    :goto_18
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getPoints|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :try_start_40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1641
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    .line 1642
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 1644
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$20$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$20$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$20;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5f} :catch_60

    .line 1652
    :goto_5f
    return-void

    .line 1649
    :catch_60
    move-exception v0

    .line 1650
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getPoints|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 1633
    :catch_83
    move-exception v0

    goto :goto_18
.end method
