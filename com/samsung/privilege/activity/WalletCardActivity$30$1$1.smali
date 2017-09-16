.class Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$30$1;)V
    .registers 2

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2684
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2685
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(process_wallet_get_campaign_detail|onFailure)response_code="

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "Can not get campaign data!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 2655
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(process_wallet_get_campaign_detail|onComplete)response_code="

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

    .line 2656
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e6

    .line 2658
    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2659
    const-string/jumbo v1, "Website"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    const-string/jumbo v1, ""

    .line 2661
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a4

    .line 2662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2667
    :goto_6e
    if-eqz v0, :cond_cb

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 2668
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2669
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2670
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->r(Lcom/samsung/privilege/activity/WalletCardActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2680
    :goto_a3
    return-void

    .line 2664
    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?return_url=bzbs_return_url&cancel_url=bzbs_cancel_url&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 2672
    :cond_cb
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "Website url not found!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_d7} :catch_d8

    goto :goto_a3

    .line 2674
    :catch_d8
    move-exception v0

    .line 2675
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "Error while get campaign data!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    goto :goto_a3

    .line 2678
    :cond_e6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$30$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(ZZ)V

    goto :goto_a3
.end method
