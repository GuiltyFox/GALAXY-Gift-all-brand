.class Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    .line 74
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    # getter for: Lic/buzzebeeslib/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->access$0(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceResponse:url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    # getter for: Lic/buzzebeeslib/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->access$0(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shouldOverrideUrlLoading|url := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "bzbs_return_url"

    .line 79
    .local v3, "url_return":Ljava/lang/String;
    const-string v2, "bzbs_cancel_url"

    .line 81
    .local v2, "url_cancel":Ljava/lang/String;
    if-eqz p2, :cond_48

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 83
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "bzbs_return_url"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->finish()V

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_48
    :goto_48
    const/4 v4, 0x0

    return v4

    .line 88
    :cond_4a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 89
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->finish()V

    goto :goto_48
.end method
