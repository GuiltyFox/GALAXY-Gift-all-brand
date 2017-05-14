.class Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 111
    if-eqz p2, :cond_9d

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
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

    .line 115
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

    .line 117
    if-eqz p2, :cond_7a

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 119
    :cond_68
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    .line 123
    :cond_7a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tg=new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->a:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 130
    :cond_9d
    return v4
.end method
