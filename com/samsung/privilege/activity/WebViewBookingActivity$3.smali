.class Lcom/samsung/privilege/activity/WebViewBookingActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewBookingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewBookingActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

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

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->access$000(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v3, "bzbs_cancel_url"

    .line 71
    .local v3, "url_cancel":Ljava/lang/String;
    const-string/jumbo v4, "payment/bzbs_buy_return_url"

    .line 72
    .local v4, "url_return":Ljava/lang/String;
    const-string/jumbo v5, "payment/bzbs_buy_return_url?result=success"

    .line 74
    .local v5, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_82

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 77
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewBookingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->access$100(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 80
    :cond_48
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 81
    :cond_64
    const-string/jumbo v6, "content://someURI"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "bzbs_return_url"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->setResult(ILandroid/content/Intent;)V

    .line 85
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    .line 95
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_82
    :goto_82
    const/4 v6, 0x0

    return v6

    .line 86
    :cond_84
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 87
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_82

    .line 88
    :cond_98
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tg=new"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v6, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_82
.end method
