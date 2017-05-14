.class public Lcom/samsung/privilege/activity/WebViewBookingActivity;
.super Landroid/app/Activity;
.source "WebViewBookingActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewBookingActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f040187

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->setContentView(I)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->d:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a()V

    .line 39
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    .line 40
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 44
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3e

    .line 46
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50
    :cond_3e
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewBookingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    :try_start_62
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeheader=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7f

    .line 113
    const v0, 0x7f10017e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 114
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7f} :catch_aa

    .line 120
    :cond_7f
    :goto_7f
    if-eqz p1, :cond_87

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 128
    :goto_86
    return-void

    .line 123
    :cond_87
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl gUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_86

    .line 116
    :catch_aa
    move-exception v0

    goto :goto_7f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    const-string/jumbo v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    if-ne v0, v1, :cond_18

    .line 136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 137
    packed-switch p1, :pswitch_data_3c

    .line 150
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1c
    return v0

    .line 140
    :pswitch_1d
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_35
    move v0, v1

    .line 146
    goto :goto_1c

    .line 144
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBookingActivity;->finish()V

    goto :goto_35

    .line 137
    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_1d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 177
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBookingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method
