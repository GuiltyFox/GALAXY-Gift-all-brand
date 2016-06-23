.class public Lcom/samsung/privilege/activity/WebViewBuyPointActivity;
.super Landroid/app/Activity;
.source "WebViewBuyPointActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 33
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initialParam()"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    .line 224
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v4, 0x7f040166

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setContentView(I)V

    .line 44
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->initialParam()V

    .line 48
    const v4, 0x7f1001f9

    :try_start_18
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v2, :cond_37

    .line 50
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 51
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_37} :catch_ce

    .line 57
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v2    # "tvPageHeader":Landroid/widget/TextView;
    :cond_37
    :goto_37
    const v4, 0x7f10017a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    .line 59
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 60
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 62
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 63
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 64
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_60

    .line 65
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 66
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 69
    :cond_60
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    :try_start_84
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nativeheader=false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a1

    .line 173
    const v4, 0x7f100163

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 174
    .local v1, "layoutHeader":Landroid/widget/RelativeLayout;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a1} :catch_cc

    .line 180
    .end local v1    # "layoutHeader":Landroid/widget/RelativeLayout;
    :cond_a1
    :goto_a1
    if-eqz p1, :cond_a9

    .line 181
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 188
    :goto_a8
    return-void

    .line 183
    :cond_a9
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadUrl gUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_a8

    .line 176
    :catch_cc
    move-exception v4

    goto :goto_a1

    .line 53
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :catch_ce
    move-exception v4

    goto/16 :goto_37
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    const/4 v2, 0x4

    if-ne p1, v2, :cond_22

    .line 194
    const-string/jumbo v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "bzbs_buy_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    .line 199
    const/4 v2, 0x1

    .line 201
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
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 214
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method
