.class public Lcom/samsung/privilege/activity/UserTermsConditionsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "UserTermsConditionsActivity.java"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 20
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->LOGCAT:Ljava/lang/String;

    return-void
.end method

.method private initialLayout()V
    .registers 11

    .prologue
    .line 46
    const v1, 0x7f1001cd

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 53
    .local v0, "webView1":Landroid/webkit/WebView;
    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 54
    .local v9, "res":Landroid/content/res/Resources;
    const v1, 0x7f080003

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 56
    .local v8, "in_s":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v6, v1, [B

    .line 57
    .local v6, "b":[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 62
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 63
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 66
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_47

    .line 71
    .end local v6    # "b":[B
    .end local v8    # "in_s":Ljava/io/InputStream;
    .end local v9    # "res":Landroid/content/res/Resources;
    :goto_46
    return-void

    .line 67
    :catch_47
    move-exception v7

    .line 69
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "error"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->showToast(Ljava/lang/String;)V

    goto :goto_46
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/UserTermsConditionsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity$1;-><init>(Lcom/samsung/privilege/activity/UserTermsConditionsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->finish()V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    if-eqz p1, :cond_35

    .line 29
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    const-string/jumbo v1, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->setContentView(I)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gFont:Landroid/graphics/Typeface;

    .line 42
    invoke-direct {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->initialLayout()V

    .line 43
    return-void

    .line 31
    :cond_35
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    const-string/jumbo v1, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 76
    return-void
.end method
