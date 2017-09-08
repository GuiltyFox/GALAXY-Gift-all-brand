.class public Lcom/samsung/privilege/activity/UserTermsConditionsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "UserTermsConditionsActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 36
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 86
    const v0, 0x7f100213

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 88
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 90
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 91
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 92
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 95
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 96
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 99
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 103
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 106
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_3c

    .line 110
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 114
    :cond_3c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_45

    .line 115
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 118
    :cond_45
    if-eqz p1, :cond_4b

    .line 119
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 127
    :goto_4a
    return-void

    .line 121
    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1054"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 122
    sget-object v1, Lcom/bzbs/data/AppSetting;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4a

    .line 124
    :cond_62
    sget-object v1, Lcom/bzbs/data/AppSetting;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4a
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->finish()V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_35

    .line 45
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    const-string/jumbo v1, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->setContentView(I)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->b:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->c:Landroid/graphics/Typeface;

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->a(Landroid/os/Bundle;)V

    .line 60
    return-void

    .line 47
    :cond_35
    const-string/jumbo v0, "PrivacyPolicyInsingInsingActivity"

    const-string/jumbo v1, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 132
    return-void
.end method
