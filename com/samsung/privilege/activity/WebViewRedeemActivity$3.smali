.class Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->access$000(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

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

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->access$000(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldOverrideUrlLoading|url := "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v5, "bzbs_cancel_url"

    .line 91
    .local v5, "url_cancel":Ljava/lang/String;
    const-string/jumbo v6, "payment/bzbs_buy_return_url"

    .line 92
    .local v6, "url_return":Ljava/lang/String;
    const-string/jumbo v7, "payment/bzbs_buy_return_url?result=success"

    .line 94
    .local v7, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_82

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 96
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    iget-object v10, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->access$100(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 99
    :cond_48
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_64

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 100
    :cond_64
    const-string/jumbo v8, "content://someURI"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 101
    .local v4, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-direct {v3, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "bzbs_return_url"

    invoke-virtual {v3, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v3}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 132
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_82
    :goto_82
    const/4 v8, 0x0

    return v8

    .line 105
    :cond_84
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 106
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_82

    .line 107
    :cond_98
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tg=new"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "www.goprimetime.tv/app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 111
    :cond_b2
    :try_start_b2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v1, "browserIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8, v1}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c8} :catch_c9

    goto :goto_82

    .line 114
    .end local v1    # "browserIntent":Landroid/content/Intent;
    :catch_c9
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 120
    :try_start_cf
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 121
    .restart local v4    # "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "market://details?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "googleplay"

    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_ff
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cf .. :try_end_ff} :catch_100

    goto :goto_82

    .line 122
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_100
    move-exception v0

    .line 123
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 124
    .restart local v4    # "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "googleplay"

    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_82
.end method
