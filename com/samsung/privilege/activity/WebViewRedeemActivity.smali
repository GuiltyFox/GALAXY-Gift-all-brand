.class public Lcom/samsung/privilege/activity/WebViewRedeemActivity;
.super Landroid/app/Activity;
.source "WebViewRedeemActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->d:Z

    .line 31
    const-class v0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->b:Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "serial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->c:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "hide_serial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->d:Z

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 245
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04017c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setContentView(I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->f:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a()V

    .line 48
    const v0, 0x7f1006db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 50
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->d:Z

    if-ne v0, v3, :cond_3d

    .line 55
    const v0, 0x7f1002a1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    :cond_3d
    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_66

    .line 66
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 70
    :cond_66
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    :try_start_8a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeheader=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a7

    .line 150
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 151
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_a7} :catch_132

    .line 157
    :cond_a7
    :goto_a7
    if-eqz p1, :cond_af

    .line 158
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 177
    :goto_ae
    return-void

    .line 160
    :cond_af
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->b:Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "{serial}"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "<serial>"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_fe
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_ae

    .line 169
    :cond_11d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fe

    .line 153
    :catch_132
    move-exception v0

    goto/16 :goto_a7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    const-string/jumbo v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    if-ne v0, v1, :cond_18

    .line 195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 196
    packed-switch p1, :pswitch_data_3c

    .line 209
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1c
    return v0

    .line 199
    :pswitch_1d
    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 201
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_35
    move v0, v1

    .line 205
    goto :goto_1c

    .line 203
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_35

    .line 196
    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_1d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 236
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method
