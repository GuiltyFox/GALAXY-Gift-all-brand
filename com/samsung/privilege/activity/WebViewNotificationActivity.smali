.class public Lcom/samsung/privilege/activity/WebViewNotificationActivity;
.super Landroid/app/Activity;
.source "WebViewNotificationActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->c:Ljava/lang/String;

    .line 43
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "<token>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_57

    .line 50
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "<uid>"

    invoke-virtual {v0}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    .line 57
    :goto_56
    return-void

    .line 52
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "<uid>"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_65} :catch_66

    goto :goto_56

    .line 54
    :catch_66
    move-exception v0

    goto :goto_56
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f04011e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setContentView(I)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->e:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a()V

    .line 80
    const v0, 0x7f10053a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    .line 82
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 85
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_41

    .line 88
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 89
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 92
    :cond_41
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 143
    :try_start_65
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeheader=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_82

    .line 144
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_104

    .line 151
    :cond_82
    :goto_82
    if-eqz p1, :cond_a2

    .line 152
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 168
    :goto_89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    if-ne v0, v4, :cond_a1

    .line 170
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Click Link"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_a1
    return-void

    .line 154
    :cond_a2
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->b:Ljava/lang/String;

    .line 155
    const-string/jumbo v1, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_d0
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadUrl gUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_89

    .line 160
    :cond_ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    .line 147
    :catch_104
    move-exception v0

    goto/16 :goto_82
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 178
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    const-string/jumbo v0, "bzbs_return_url"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->finish()V

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_21
    return v0

    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_21
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 198
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewNotificationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
