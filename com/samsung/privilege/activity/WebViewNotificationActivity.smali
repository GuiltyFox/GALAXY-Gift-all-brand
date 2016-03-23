.class public Lcom/samsung/privilege/activity/WebViewNotificationActivity;
.super Landroid/app/Activity;
.source "WebViewNotificationActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-class v0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialParam()V
    .registers 7

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 40
    const-string/jumbo v3, "message"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->message:Ljava/lang/String;

    .line 43
    :try_start_16
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v4, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v4, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    .line 49
    .local v2, "profile":Lcom/facebook/Profile;
    if-eqz v2, :cond_57

    .line 50
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v4, "<uid>"

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 57
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v2    # "profile":Lcom/facebook/Profile;
    :goto_56
    return-void

    .line 52
    .restart local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v2    # "profile":Lcom/facebook/Profile;
    :cond_57
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v4, "<uid>"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_65} :catch_66

    goto :goto_56

    .line 54
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v2    # "profile":Lcom/facebook/Profile;
    :catch_66
    move-exception v3

    goto :goto_56
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->requestWindowFeature(I)Z

    .line 64
    const v6, 0x7f04015d

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setContentView(I)V

    .line 66
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->initialParam()V

    .line 70
    const v6, 0x7f1001f0

    :try_start_1b
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v3, :cond_3a

    .line 72
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 73
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_3a
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->message:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3f} :catch_12e

    .line 80
    .end local v3    # "tvPageHeader":Landroid/widget/TextView;
    :goto_3f
    const v6, 0x7f1004ae

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    .line 82
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 83
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 85
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 86
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_68

    .line 88
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 89
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 92
    :cond_68
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 176
    :try_start_8c
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "nativeheader=false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_a9

    .line 177
    const v6, 0x7f100162

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 178
    .local v2, "layoutHeader":Landroid/widget/RelativeLayout;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a9} :catch_12b

    .line 184
    .end local v2    # "layoutHeader":Landroid/widget/RelativeLayout;
    :cond_a9
    :goto_a9
    if-eqz p1, :cond_c9

    .line 185
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 201
    :goto_b0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "from_noti"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    .local v1, "is_from_noti":Z
    if-ne v1, v9, :cond_c8

    .line 203
    const-string/jumbo v6, "Push Notification"

    const-string/jumbo v7, "Click Link"

    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_c8
    return-void

    .line 187
    .end local v1    # "is_from_noti":Z
    :cond_c9
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gUrl:Ljava/lang/String;

    .line 188
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v6, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string/jumbo v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    :goto_f7
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadUrl gUrl"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_b0

    .line 193
    :cond_116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f7

    .line 180
    .end local v4    # "url":Ljava/lang/String;
    :catch_12b
    move-exception v6

    goto/16 :goto_a9

    .line 76
    .end local v5    # "webSettings":Landroid/webkit/WebSettings;
    :catch_12e
    move-exception v6

    goto/16 :goto_3f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 209
    const/4 v2, 0x4

    if-ne p1, v2, :cond_22

    .line 211
    const-string/jumbo v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "bzbs_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 216
    const/4 v2, 0x1

    .line 218
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
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 231
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method
