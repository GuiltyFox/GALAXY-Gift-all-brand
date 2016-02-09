.class Lcom/samsung/privilege/activity/PointStatementActivity$3;
.super Landroid/webkit/WebViewClient;
.source "PointStatementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/PointStatementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/PointStatementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    .line 70
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    # getter for: Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->access$0(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceResponse:url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    # getter for: Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->access$0(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shouldOverrideUrlLoading|url := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "bzbs_cancel_url"

    .line 75
    .local v2, "url_cancel":Ljava/lang/String;
    const-string v3, "payment/bzbs_buy_return_url"

    .line 76
    .local v3, "url_return":Ljava/lang/String;
    const-string v4, "payment/bzbs_buy_return_url?result=success"

    .line 78
    .local v4, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_58

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 80
    :cond_3c
    const-string v5, "content://someURI"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "bzbs_return_url"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_58
    :goto_58
    const/4 v5, 0x0

    return v5

    .line 85
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 86
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    goto :goto_58
.end method
