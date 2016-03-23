.class Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;
.super Landroid/webkit/WebViewClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "payment/bzbs_buy_return_url"

    .line 111
    .local v2, "url_return":Ljava/lang/String;
    const-string/jumbo v3, "payment/bzbs_buy_return_url?result=success"

    .line 113
    .local v3, "url_return_done":Ljava/lang/String;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url_return := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p2, :cond_ec

    .line 127
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1 := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "url.toLowerCase() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "url_return.toLowerCase() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2 := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 130
    :cond_ce
    const-string/jumbo v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "bzbs_buy_return_url"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->finish()V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_ec
    const/4 v4, 0x0

    return v4
.end method
