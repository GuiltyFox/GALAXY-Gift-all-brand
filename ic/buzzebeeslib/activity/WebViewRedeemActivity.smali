.class public Lic/buzzebeeslib/activity/WebViewRedeemActivity;
.super Landroid/app/Activity;
.source "WebViewRedeemActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gSerial:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    .line 32
    const-string v1, "serial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->finish()V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v4, Lic/buzzebeeslib/R$layout;->bz_webview_redeem:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->initialParam()V

    .line 40
    sget v4, Lic/buzzebeeslib/R$id;->tvSerial:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, "tvSerial":Landroid/widget/TextView;
    sget v4, Lic/buzzebeeslib/R$id;->etSerial:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 43
    .local v0, "etSerial":Landroid/widget/EditText;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 44
    .local v1, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 51
    sget v4, Lic/buzzebeeslib/R$id;->webView:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 52
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 53
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 55
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 56
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 58
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lic/buzzebeeslib/activity/WebViewRedeemActivity$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity$1;-><init>(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lic/buzzebeeslib/activity/WebViewRedeemActivity$2;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity$2;-><init>(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity$3;-><init>(Lic/buzzebeeslib/activity/WebViewRedeemActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    if-eqz p1, :cond_81

    .line 106
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 113
    :goto_80
    return-void

    .line 108
    :cond_81
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadUrl gUrl"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_80
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, "enable_webview_back":Z
    if-eqz v0, :cond_16

    .line 121
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 122
    packed-switch p1, :pswitch_data_38

    .line 135
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1a
    return v2

    .line 125
    :pswitch_1b
    sget v2, Lic/buzzebeeslib/R$id;->webView:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 126
    iget-object v2, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 127
    iget-object v2, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_32
    const/4 v2, 0x1

    goto :goto_1a

    .line 129
    :cond_34
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->finish()V

    goto :goto_32

    .line 122
    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_1b
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 148
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
