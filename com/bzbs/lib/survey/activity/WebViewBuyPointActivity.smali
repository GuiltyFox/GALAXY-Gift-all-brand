.class public Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;
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
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-class v0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 32
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initialParam()"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCreate(Bundle savedInstanceState)"

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget v4, Lcom/bzbs/lib/survey/R$layout;->bz_webview_buy_point:I

    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->initialParam()V

    .line 49
    :try_start_15
    sget v4, Lcom/bzbs/lib/survey/R$id;->tvPageHeader:I

    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v2, :cond_31

    .line 51
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/DSNSKW_.TTF"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 52
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    .end local v1    # "font":Landroid/graphics/Typeface;
    :cond_31
    sget v4, Lcom/bzbs/lib/survey/R$id;->contentTitle:I

    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    .local v0, "contentTitle":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$1;-><init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_b2

    .line 69
    .end local v0    # "contentTitle":Landroid/widget/LinearLayout;
    .end local v2    # "tvPageHeader":Landroid/widget/TextView;
    :goto_41
    sget v4, Lcom/bzbs/lib/survey/R$id;->webView:I

    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    .line 71
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 72
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 74
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 75
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 76
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 77
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 79
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$2;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$2;-><init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 89
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$3;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$3;-><init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$4;-><init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    if-eqz p1, :cond_8f

    .line 173
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 180
    :goto_8e
    return-void

    .line 175
    :cond_8f
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadUrl gUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_8e

    .line 65
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :catch_b2
    move-exception v4

    goto :goto_41
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    const/4 v2, 0x4

    if-ne p1, v2, :cond_22

    .line 186
    const-string/jumbo v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "bzbs_buy_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->finish()V

    .line 191
    const/4 v2, 0x1

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_21
    return v2

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_21
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 206
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bzbs/lib/survey/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 213
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
