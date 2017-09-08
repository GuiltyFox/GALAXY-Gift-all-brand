.class public Lcom/samsung/privilege/activity/PointStatementActivity;
.super Landroid/app/Activity;
.source "PointStatementActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-class v0, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/PointStatementActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->a()V

    .line 33
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 38
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_37

    .line 40
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 44
    :cond_37
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/PointStatementActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$1;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/PointStatementActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$2;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/PointStatementActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/PointStatementActivity$3;-><init>(Lcom/samsung/privilege/activity/PointStatementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    if-eqz p1, :cond_63

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 100
    :goto_62
    return-void

    .line 95
    :cond_63
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl gUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_62
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string/jumbo v2, "enable_webview_back"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    if-ne v0, v1, :cond_18

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 109
    packed-switch p1, :pswitch_data_3c

    .line 122
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1c
    return v0

    .line 112
    :pswitch_1d
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/PointStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_35
    move v0, v1

    .line 118
    goto :goto_1c

    .line 116
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/PointStatementActivity;->finish()V

    goto :goto_35

    .line 109
    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_1d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 149
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/PointStatementActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
