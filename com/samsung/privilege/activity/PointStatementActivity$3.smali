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
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/PointStatementActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    # getter for: Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->access$000(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

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

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    # getter for: Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->access$000(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

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

    .line 64
    const-string/jumbo v2, "bzbs_cancel_url"

    .line 65
    .local v2, "url_cancel":Ljava/lang/String;
    const-string/jumbo v3, "payment/bzbs_buy_return_url"

    .line 66
    .local v3, "url_return":Ljava/lang/String;
    const-string/jumbo v4, "payment/bzbs_buy_return_url?result=success"

    .line 68
    .local v4, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_62

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 70
    :cond_44
    const-string/jumbo v5, "content://someURI"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "bzbs_return_url"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_62
    :goto_62
    const/4 v5, 0x0

    return v5

    .line 75
    :cond_64
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 76
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->this$0:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    goto :goto_62
.end method
