.class Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "return_url"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "return_url"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?result=success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz p2, :cond_131

    .line 101
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1 := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "url.toLowerCase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "url_return.toLowerCase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "2 := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 105
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->c(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    .line 108
    :cond_f7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_113

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 109
    :cond_113
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    const-string/jumbo v0, "bzbs_buy_return_url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    .line 143
    :cond_131
    :goto_131
    return v6

    .line 114
    :cond_132
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    goto :goto_131
.end method
