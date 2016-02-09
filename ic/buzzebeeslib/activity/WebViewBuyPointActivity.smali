.class public Lic/buzzebeeslib/activity/WebViewBuyPointActivity;
.super Landroid/app/Activity;
.source "WebViewBuyPointActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-class v0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/WebViewBuyPointActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 30
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    const-string v2, "initialParam()"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(Bundle savedInstanceState)"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget v3, Lic/buzzebeeslib/R$layout;->bz_webview_buy_point:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->initialParam()V

    .line 47
    :try_start_13
    sget v3, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v1, :cond_2e

    .line 49
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/DSNSKW_.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 50
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_94

    .line 56
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "tvPageHeader":Landroid/widget/TextView;
    :cond_2e
    :goto_2e
    sget v3, Lic/buzzebeeslib/R$id;->webView:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    .line 58
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 59
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 61
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 62
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 64
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$1;-><init>(Lic/buzzebeeslib/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 74
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$2;-><init>(Lic/buzzebeeslib/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$3;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity$3;-><init>(Lic/buzzebeeslib/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    if-eqz p1, :cond_76

    .line 158
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 165
    :goto_75
    return-void

    .line 160
    :cond_76
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadUrl gUrl"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_75

    .line 52
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    :catch_94
    move-exception v3

    goto :goto_2e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1f

    .line 171
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "bzbs_buy_return_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->finish()V

    .line 176
    const/4 v2, 0x1

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1e
    return v2

    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 191
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 196
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 198
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method
