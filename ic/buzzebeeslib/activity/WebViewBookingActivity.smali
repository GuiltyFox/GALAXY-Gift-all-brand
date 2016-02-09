.class public Lic/buzzebeeslib/activity/WebViewBookingActivity;
.super Landroid/app/Activity;
.source "WebViewBookingActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-class v0, Lic/buzzebeeslib/activity/WebViewBookingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/WebViewBookingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v1, Lic/buzzebeeslib/R$layout;->bz_webview_booking:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->initialParam()V

    .line 31
    sget v1, Lic/buzzebeeslib/R$id;->webView:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    .line 32
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 33
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 35
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 38
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v2, Lic/buzzebeeslib/activity/WebViewBookingActivity$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity$1;-><init>(Lic/buzzebeeslib/activity/WebViewBookingActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 48
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v2, Lic/buzzebeeslib/activity/WebViewBookingActivity$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity$2;-><init>(Lic/buzzebeeslib/activity/WebViewBookingActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v2, Lic/buzzebeeslib/activity/WebViewBookingActivity$3;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity$3;-><init>(Lic/buzzebeeslib/activity/WebViewBookingActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    if-eqz p1, :cond_54

    .line 86
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 93
    :goto_53
    return-void

    .line 88
    :cond_54
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadUrl gUrl"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "enable_webview_back":Z
    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 102
    packed-switch p1, :pswitch_data_38

    .line 115
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1a
    return v2

    .line 105
    :pswitch_1b
    sget v2, Lic/buzzebeeslib/R$id;->webView:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    .line 106
    iget-object v2, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 107
    iget-object v2, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 111
    :goto_32
    const/4 v2, 0x1

    goto :goto_1a

    .line 109
    :cond_34
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBookingActivity;->finish()V

    goto :goto_32

    .line 102
    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_1b
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 128
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method
