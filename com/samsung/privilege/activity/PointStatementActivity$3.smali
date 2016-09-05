.class Lcom/samsung/privilege/activity/PointStatementActivity$3;
.super Landroid/webkit/WebViewClient;
.source "PointStatementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/PointStatementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/PointStatementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->a(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

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

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->a(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;

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

    .line 64
    const-string/jumbo v0, "bzbs_cancel_url"

    .line 65
    const-string/jumbo v1, "payment/bzbs_buy_return_url"

    .line 66
    const-string/jumbo v2, "payment/bzbs_buy_return_url?result=success"

    .line 68
    if-eqz p2, :cond_62

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 70
    :cond_44
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    const-string/jumbo v0, "bzbs_return_url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/PointStatementActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    .line 80
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_64
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity$3;->a:Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    goto :goto_62
.end method
