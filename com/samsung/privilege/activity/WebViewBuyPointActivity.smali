.class public Lcom/samsung/privilege/activity/WebViewBuyPointActivity;
.super Landroid/app/Activity;
.source "WebViewBuyPointActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "initialParam()"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setContentView(I)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->d:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a()V

    .line 57
    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3e

    .line 65
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 69
    :cond_3e
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewBuyPointActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 156
    :try_start_62
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeheader=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7f

    .line 157
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 158
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7f} :catch_aa

    .line 164
    :cond_7f
    :goto_7f
    if-eqz p1, :cond_87

    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 172
    :goto_86
    return-void

    .line 167
    :cond_87
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl gUrl -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_86

    .line 160
    :catch_aa
    move-exception v0

    goto :goto_7f
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
    const-string/jumbo v0, "bzbs_buy_return_url"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->finish()V

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
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 198
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
