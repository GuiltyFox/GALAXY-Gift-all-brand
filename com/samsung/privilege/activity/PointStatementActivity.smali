.class public Lcom/samsung/privilege/activity/PointStatementActivity;
.super Landroid/app/Activity;
.source "PointStatementActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gUrl:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v5, 0x7f03010c

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->initialParam()V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 40
    .local v0, "font":Landroid/graphics/Typeface;
    const v5, 0x7f0c005b

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "tvHeaderCaption":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    const v5, 0x7f0c0296

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    .line 44
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 45
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 47
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 48
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 49
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_53

    .line 50
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 51
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 54
    :cond_53
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/PointStatementActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$1;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/PointStatementActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$2;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/PointStatementActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$3;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    if-eqz p1, :cond_b6

    .line 103
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 110
    :goto_7d
    const v5, 0x7f0c0031

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "768830479847872"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 112
    const v5, 0x7f0202b8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_9c
    const v5, 0x7f0c005a

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 122
    .local v2, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 123
    const v5, 0x7f0202bc

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_b5
    return-void

    .line 105
    .end local v1    # "imgFlag":Landroid/widget/ImageView;
    .end local v2    # "imgLogo":Landroid/widget/ImageView;
    :cond_b6
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadUrl gUrl"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7d

    .line 113
    .restart local v1    # "imgFlag":Landroid/widget/ImageView;
    :cond_d4
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1525635597652592"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 114
    const v5, 0x7f0202b7

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9c

    .line 115
    :cond_eb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "517155661760483"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 116
    const v5, 0x7f0202b9

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9c

    .line 118
    :cond_102
    const v5, 0x7f0202ba

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9c

    .line 125
    .restart local v2    # "imgLogo":Landroid/widget/ImageView;
    :cond_109
    const v5, 0x7f0202bb

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, "enable_webview_back":Z
    if-eqz v0, :cond_16

    .line 136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 137
    packed-switch p1, :pswitch_data_3a

    .line 150
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1a
    return v2

    .line 140
    :pswitch_1b
    const v2, 0x7f0c0296

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    .line 141
    iget-object v2, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 142
    iget-object v2, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 146
    :goto_33
    const/4 v2, 0x1

    goto :goto_1a

    .line 144
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    goto :goto_33

    .line 137
    nop

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_1b
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 177
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method
