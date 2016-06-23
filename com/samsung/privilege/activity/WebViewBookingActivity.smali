.class public Lcom/samsung/privilege/activity/WebViewBookingActivity;
.super Landroid/app/Activity;
.source "WebViewBookingActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-class v0, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewBookingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewBookingActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f040165

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->setContentView(I)V

    .line 36
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gHandler:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->initialParam()V

    .line 39
    const v2, 0x7f10017a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    .line 40
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 41
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 43
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 44
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3e

    .line 46
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 47
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50
    :cond_3e
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 60
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 108
    :try_start_62
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeheader=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7f

    .line 109
    const v2, 0x7f100163

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 110
    .local v0, "layoutHeader":Landroid/widget/RelativeLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7f} :catch_aa

    .line 116
    .end local v0    # "layoutHeader":Landroid/widget/RelativeLayout;
    :cond_7f
    :goto_7f
    if-eqz p1, :cond_87

    .line 117
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 124
    :goto_86
    return-void

    .line 119
    :cond_87
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadUrl gUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_86

    .line 112
    :catch_aa
    move-exception v2

    goto :goto_7f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, "enable_webview_back":Z
    if-ne v0, v3, :cond_18

    .line 132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    .line 133
    packed-switch p1, :pswitch_data_3c

    .line 146
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1c
    return v2

    .line 136
    :pswitch_1d
    const v2, 0x7f10017a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    .line 137
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 138
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    :goto_35
    move v2, v3

    .line 142
    goto :goto_1c

    .line 140
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_35

    .line 133
    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_1d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 173
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
