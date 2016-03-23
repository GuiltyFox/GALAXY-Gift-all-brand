.class Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    if-eqz p2, :cond_4a

    .line 148
    const-string/jumbo v1, "payment/bzbs_buy_return_url?result=success"

    .line 150
    .local v1, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_27

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 152
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->access$000(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 156
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tg=new"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 163
    .end local v0    # "browserIntent":Landroid/content/Intent;
    .end local v1    # "url_return_done":Ljava/lang/String;
    :cond_4a
    const/4 v2, 0x0

    return v2
.end method
