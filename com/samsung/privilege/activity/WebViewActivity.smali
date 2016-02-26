.class public Lcom/samsung/privilege/activity/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lcom/samsung/privilege/activity/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gUrl:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(Bundle savedInstanceState)"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const v3, 0x7f0300a3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewActivity;->setContentView(I)V

    .line 42
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gHandler:Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewActivity;->initialParam()V

    .line 46
    const v3, 0x7f0c009b

    :try_start_1e
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v1, :cond_37

    .line 48
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/DSNSKW_.TTF"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_9e

    .line 55
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "tvPageHeader":Landroid/widget/TextView;
    :cond_37
    :goto_37
    const v3, 0x7f0c0296

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    .line 57
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 58
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 60
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 61
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/samsung/privilege/activity/WebViewActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/WebViewActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 73
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/samsung/privilege/activity/WebViewActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/WebViewActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/samsung/privilege/activity/WebViewActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/WebViewActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    if-eqz p1, :cond_80

    .line 129
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 136
    :goto_7f
    return-void

    .line 131
    :cond_80
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadUrl gUrl"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7f

    .line 51
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    :catch_9e
    move-exception v3

    goto :goto_37
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1f

    .line 142
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "bzbs_buy_return_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewActivity;->finish()V

    .line 147
    const/4 v2, 0x1

    .line 149
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
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 162
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 169
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
