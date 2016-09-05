.class Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

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

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

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

    .line 90
    const-string/jumbo v0, "/bzbs_cancel_url"

    .line 94
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->b(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "return_url"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "return_url"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "?result=success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    if-eqz p2, :cond_c3

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 100
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->c(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 103
    :cond_89
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 104
    :cond_a5
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    const-string/jumbo v0, "bzbs_return_url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 136
    :cond_c3
    :goto_c3
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_c5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_c3

    .line 111
    :cond_d9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "www.goprimetime.tv/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 115
    :cond_f3
    :try_start_f3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_109} :catch_10a

    goto :goto_c3

    .line 118
    :catch_10a
    move-exception v0

    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 124
    :try_start_110
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "googleplay"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_140
    .catch Landroid/content/ActivityNotFoundException; {:try_start_110 .. :try_end_140} :catch_141

    goto :goto_c3

    .line 126
    :catch_141
    move-exception v0

    .line 127
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->a:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "googleplay"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c3
.end method
