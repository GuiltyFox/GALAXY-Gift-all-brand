.class Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebResourceResponse:url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v3, "payment/bzbs_buy_return_url"

    .line 101
    .local v3, "url_return":Ljava/lang/String;
    const-string/jumbo v4, "payment/bzbs_buy_return_url?result=success"

    .line 103
    .local v4, "url_return_done":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url_return := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p2, :cond_10c

    .line 117
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "1 := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "url.toLowerCase() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "url_return.toLowerCase() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "2 := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 121
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    iget-object v7, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->access$100(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 124
    :cond_d2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ee

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 125
    :cond_ee
    const-string/jumbo v5, "content://someURI"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 126
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "bzbs_buy_return_url"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v1}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_10c
    :goto_10c
    const/4 v5, 0x0

    return v5

    .line 130
    :cond_10e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tg=new"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v5, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    goto :goto_10c
.end method
