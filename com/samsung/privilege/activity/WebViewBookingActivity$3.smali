.class Lcom/samsung/privilege/activity/WebViewBookingActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBookingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewBookingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

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

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

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

    .line 70
    const-string/jumbo v0, "/bzbs_cancel_url"

    .line 74
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
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

    .line 76
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

    .line 78
    if-eqz p2, :cond_c3

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 81
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->c(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 84
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

    .line 85
    :cond_a5
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    const-string/jumbo v0, "bzbs_return_url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    .line 99
    :cond_c3
    :goto_c3
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_c5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_c3

    .line 92
    :cond_d9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->a:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_c3
.end method
