.class Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewCustomInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    # getter for: Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->access$0(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceResponse:url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    move-object v0, p2

    .line 92
    .local v0, "afterDecode":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    # getter for: Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->access$0(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "afterDecode := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, ""

    .line 95
    .local v1, "bzbs_return_url":Ljava/lang/String;
    if-eqz v0, :cond_46

    const-string v5, "bzbs_return_url"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 96
    const-string v5, "?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "strArrUrl":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v3    # "strArrUrl":[Ljava/lang/String;
    :cond_46
    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    # getter for: Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->access$0(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bzbs_return_url := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "content://someURI"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 115
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "bzbs_return_url"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v2}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;->this$0:Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->finish()V

    .line 119
    const/4 v5, 0x0

    return v5
.end method
