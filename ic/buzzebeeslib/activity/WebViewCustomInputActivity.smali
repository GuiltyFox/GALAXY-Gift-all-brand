.class public Lic/buzzebeeslib/activity/WebViewCustomInputActivity;
.super Landroid/app/Activity;
.source "WebViewCustomInputActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-class v0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 32
    iget-object v1, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    const-string v2, "initialParam()"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(Bundle savedInstanceState)"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget v3, Lic/buzzebeeslib/R$layout;->bz_webview_custominput:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->setContentView(I)V

    .line 45
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 46
    invoke-direct {p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->initialParam()V

    .line 49
    :try_start_19
    sget v3, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v1, :cond_34

    .line 51
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/DSNSKW_.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 52
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_9c

    .line 58
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "tvPageHeader":Landroid/widget/TextView;
    :cond_34
    :goto_34
    sget v3, Lic/buzzebeeslib/R$id;->webViewCustomInput:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    .line 60
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 61
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 63
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 64
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 65
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 66
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$1;-><init>(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$2;-><init>(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity$3;-><init>(Lic/buzzebeeslib/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    if-eqz p1, :cond_7e

    .line 132
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 147
    :goto_7d
    return-void

    .line 142
    :cond_7e
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadUrl gUrl"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7d

    .line 54
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    :catch_9c
    move-exception v3

    goto :goto_34
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1f

    .line 153
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "bzbs_return_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->finish()V

    .line 158
    const/4 v2, 0x1

    .line 160
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
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 173
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    iget-object v0, p0, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
