.class public Lcom/samsung/privilege/activity/TermsApacheActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TermsApacheActivity.java"


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
    const-string v0, "TermsApacheActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->LOGCAT:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private initialLayout()V
    .registers 10

    .prologue
    .line 62
    const v6, 0x7f540003

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/TermsApacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    .local v4, "tvHeaderCaption":Landroid/widget/TextView;
    const v6, 0x7f540007

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/TermsApacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 66
    .local v5, "webView1":Landroid/webkit/WebView;
    :try_start_12
    iget-object v6, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_4e

    .line 79
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f060002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 82
    .local v2, "in_s":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 83
    .local v0, "b":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 86
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    const-string v7, "text/html"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_42

    .line 90
    .end local v0    # "b":[B
    .end local v2    # "in_s":Ljava/io/InputStream;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_41
    return-void

    .line 87
    :catch_42
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const v6, 0x7f0902ef

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/privilege/activity/TermsApacheActivity;->showToast(Ljava/lang/String;)V

    goto :goto_41

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4e
    move-exception v6

    goto :goto_22
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/TermsApacheActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/TermsApacheActivity$1;-><init>(Lcom/samsung/privilege/activity/TermsApacheActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->finish()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    if-eqz p1, :cond_4f

    .line 32
    const-string v1, "TermsApacheActivity"

    const-string v2, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 39
    const v1, 0x7f030120

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/TermsApacheActivity;->setContentView(I)V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gFont:Landroid/graphics/Typeface;

    .line 44
    const v1, 0x7f540002

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/TermsApacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 46
    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :goto_4b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->initialLayout()V

    .line 52
    return-void

    .line 34
    .end local v0    # "imgLogo":Landroid/widget/ImageView;
    :cond_4f
    const-string v1, "TermsApacheActivity"

    const-string v2, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 48
    .restart local v0    # "imgLogo":Landroid/widget/ImageView;
    :cond_57
    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4b
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method
