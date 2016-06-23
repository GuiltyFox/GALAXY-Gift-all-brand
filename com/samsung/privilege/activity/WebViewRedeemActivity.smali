.class public Lcom/samsung/privilege/activity/WebViewRedeemActivity;
.super Landroid/app/Activity;
.source "WebViewRedeemActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gHideSerial:Z

.field private gSerial:Ljava/lang/String;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    .line 31
    const-class v0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "serial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "hide_serial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    .line 40
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewRedeemActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$4;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 241
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v5, 0x7f040169

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setContentView(I)V

    .line 45
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHandler:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->initialParam()V

    .line 48
    const v5, 0x7f100693

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 50
    .local v0, "etSerial":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    iget-boolean v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gHideSerial:Z

    if-ne v5, v7, :cond_3d

    .line 55
    const v5, 0x7f10025c

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 56
    .local v2, "layoutSerial":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    .end local v2    # "layoutSerial":Landroid/widget/LinearLayout;
    :cond_3d
    const v5, 0x7f10017a

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 60
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 61
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 63
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 64
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 65
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_66

    .line 66
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 70
    :cond_66
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    :try_start_8a
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "nativeheader=false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a7

    .line 146
    const v5, 0x7f100163

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 147
    .local v1, "layoutHeader":Landroid/widget/RelativeLayout;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a7} :catch_132

    .line 153
    .end local v1    # "layoutHeader":Landroid/widget/RelativeLayout;
    :cond_a7
    :goto_a7
    if-eqz p1, :cond_af

    .line 154
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 173
    :goto_ae
    return-void

    .line 156
    :cond_af
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gUrl:Ljava/lang/String;

    .line 157
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v5, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string/jumbo v5, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string/jumbo v5, "{serial}"

    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string/jumbo v5, "<serial>"

    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gSerial:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    :goto_fe
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_ae

    .line 165
    :cond_11d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_fe

    .line 149
    .end local v3    # "url":Ljava/lang/String;
    :catch_132
    move-exception v5

    goto/16 :goto_a7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, "enable_webview_back":Z
    if-ne v0, v3, :cond_18

    .line 191
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    .line 192
    packed-switch p1, :pswitch_data_3c

    .line 205
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1c
    return v2

    .line 195
    :pswitch_1d
    const v2, 0x7f10017a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    .line 196
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 197
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    :goto_35
    move v2, v3

    .line 201
    goto :goto_1c

    .line 199
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_35

    .line 192
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
    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 232
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method
