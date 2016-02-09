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
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 23
    const-string v0, "PrivacyPolicyInsingInsingActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->LOGCAT:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private initialLayout()V
    .registers 12

    .prologue
    .line 56
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 57
    .local v10, "tvHeaderCaption":Landroid/widget/TextView;
    const v1, 0x7f540007

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 59
    .local v0, "webView1":Landroid/webkit/WebView;
    :try_start_12
    iget-object v1, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_64

    .line 70
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 71
    .local v9, "res":Landroid/content/res/Resources;
    const v1, 0x7f060004

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 73
    .local v8, "in_s":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v6, v1, [B

    .line 74
    .local v6, "b":[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 80
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 83
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5c} :catch_5d

    .line 88
    .end local v6    # "b":[B
    .end local v8    # "in_s":Ljava/io/InputStream;
    .end local v9    # "res":Landroid/content/res/Resources;
    :goto_5c
    return-void

    .line 84
    :catch_5d
    move-exception v7

    .line 86
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->showToast(Ljava/lang/String;)V

    goto :goto_5c

    .line 61
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_64
    move-exception v1

    goto :goto_22
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/UserTermsConditionsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity$1;-><init>(Lcom/samsung/privilege/activity/UserTermsConditionsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->finish()V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    if-eqz p1, :cond_4c

    .line 32
    const-string v1, "PrivacyPolicyInsingInsingActivity"

    const-string v2, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->requestWindowFeature(I)Z

    .line 40
    const v1, 0x7f030121

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->setContentView(I)V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->gFont:Landroid/graphics/Typeface;

    .line 45
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 47
    const v1, 0x7f0202ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_48
    invoke-direct {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->initialLayout()V

    .line 53
    return-void

    .line 34
    .end local v0    # "imgLogo":Landroid/widget/ImageView;
    :cond_4c
    const-string v1, "PrivacyPolicyInsingInsingActivity"

    const-string v2, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 49
    .restart local v0    # "imgLogo":Landroid/widget/ImageView;
    :cond_54
    const v1, 0x7f0202b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/UserTermsConditionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    return-void
.end method
