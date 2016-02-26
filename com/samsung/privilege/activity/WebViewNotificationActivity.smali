.class public Lcom/samsung/privilege/activity/WebViewNotificationActivity;
.super Landroid/app/Activity;
.source "WebViewNotificationActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-class v0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private initialParam()V
    .registers 6

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 39
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->message:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gUrl-1 := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_2a
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string v3, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_65} :catch_7c

    .line 52
    .end local v0    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_65
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gUrl-2 := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 48
    :catch_7c
    move-exception v2

    goto :goto_65
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->requestWindowFeature(I)Z

    .line 60
    const v4, 0x7f030126

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setContentView(I)V

    .line 62
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 63
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->initialParam()V

    .line 66
    const v4, 0x7f0c009b

    :try_start_19
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v1, :cond_38

    .line 68
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 69
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_38
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->message:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3d} :catch_ea

    .line 76
    .end local v1    # "tvPageHeader":Landroid/widget/TextView;
    :goto_3d
    const v4, 0x7f0c0297

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    .line 78
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 79
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 81
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 82
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 83
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_66

    .line 84
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 85
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 88
    :cond_66
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 98
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 153
    if-eqz p1, :cond_91

    .line 154
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 170
    :goto_90
    return-void

    .line 156
    :cond_91
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 157
    .local v2, "url":Ljava/lang/String;
    const-string v4, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    :goto_bc
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadUrl gUrl"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_90

    .line 162
    :cond_d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bc

    .line 72
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :catch_ea
    move-exception v4

    goto/16 :goto_3d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1f

    .line 176
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "bzbs_return_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 181
    const/4 v2, 0x1

    .line 183
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
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 196
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 202
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method
