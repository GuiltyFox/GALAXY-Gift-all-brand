.class public Lcom/samsung/privilege/activity/WebViewRedeemActivity;
.super Landroid/app/Activity;
.source "WebViewRedeemActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHideSerial:Z

.field private gSerial:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    .line 34
    const-class v0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    .line 39
    const-string v1, "serial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    .line 40
    const-string v1, "hide_serial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    .line 41
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 227
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v12, 0x40800000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v8, 0x7f030127

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->initialParam()V

    .line 48
    const v8, 0x7f0c0031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .local v2, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fb

    .line 50
    const v8, 0x7f0202b8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_2f
    const v8, 0x7f0c005a

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 61
    const v8, 0x7f0202bc

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    :goto_48
    const v8, 0x7f0c0299

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    .local v5, "tvSerial":Landroid/widget/TextView;
    const v8, 0x7f0c029a

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 69
    .local v0, "etSerial":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 70
    .local v1, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v8

    add-float/2addr v8, v12

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v8

    add-float/2addr v8, v12

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 76
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 80
    iget-boolean v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    if-eqz v8, :cond_a7

    .line 81
    const v8, 0x7f0c0298

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 82
    .local v4, "layoutSerial":Landroid/widget/LinearLayout;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    .end local v4    # "layoutSerial":Landroid/widget/LinearLayout;
    :cond_a7
    const v8, 0x7f0c0296

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 86
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 87
    .local v7, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 88
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 89
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 90
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 91
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_d0

    .line 92
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 93
    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 96
    :cond_d0
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 98
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 106
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    if-eqz p1, :cond_13b

    .line 148
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 167
    :goto_fa
    return-void

    .line 51
    .end local v0    # "etSerial":Landroid/widget/EditText;
    .end local v1    # "fontDefault":Landroid/graphics/Typeface;
    .end local v3    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "tvSerial":Landroid/widget/TextView;
    .end local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_fb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 52
    const v8, 0x7f0202b7

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2f

    .line 53
    :cond_113
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12b

    .line 54
    const v8, 0x7f0202b9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2f

    .line 56
    :cond_12b
    const v8, 0x7f0202ba

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2f

    .line 63
    .restart local v3    # "imgLogo":Landroid/widget/ImageView;
    :cond_133
    const v8, 0x7f0202bb

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_48

    .line 150
    .restart local v0    # "etSerial":Landroid/widget/EditText;
    .restart local v1    # "fontDefault":Landroid/graphics/Typeface;
    .restart local v5    # "tvSerial":Landroid/widget/TextView;
    .restart local v7    # "webSettings":Landroid/webkit/WebSettings;
    :cond_13b
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    .line 151
    .local v6, "url":Ljava/lang/String;
    const-string v8, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 152
    const-string v8, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 153
    const-string v8, "{serial}"

    iget-object v9, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 154
    const-string v8, "<serial>"

    iget-object v9, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_19f

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    :goto_184
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "loadUrl="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_fa

    .line 159
    :cond_19f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_184
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, "enable_webview_back":Z
    if-eqz v0, :cond_16

    .line 175
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_16

    .line 176
    packed-switch p1, :pswitch_data_3a

    .line 189
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1a
    return v2

    .line 179
    :pswitch_1b
    const v2, 0x7f0c0296

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 180
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 181
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 185
    :goto_33
    const/4 v2, 0x1

    goto :goto_1a

    .line 183
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_33

    .line 176
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
    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 216
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 223
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method
