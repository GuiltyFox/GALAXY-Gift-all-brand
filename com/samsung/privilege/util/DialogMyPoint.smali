.class public Lcom/samsung/privilege/util/DialogMyPoint;
.super Ljava/lang/Object;
.source "DialogMyPoint.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static gActivityContext:Landroid/content/Context;

.field private static gDialogMyPoint:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/privilege/util/DialogMyPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    return-object v0
.end method

.method public static showDialogMyPoint(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 28
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_ad

    .line 29
    sput-object p0, Lcom/samsung/privilege/util/DialogMyPoint;->gActivityContext:Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 34
    :try_start_10
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    if-eqz v5, :cond_19

    .line 35
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_ba

    .line 40
    :cond_19
    :goto_19
    new-instance v5, Landroid/app/Dialog;

    const v6, 0x7f0d00fc

    invoke-direct {v5, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    .line 42
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v6, 0x7f04010e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 44
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v6, 0x7f100585

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 45
    .local v3, "webMyPoint":Landroid/webkit/WebView;
    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 46
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 47
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 49
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 50
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_55

    .line 52
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 56
    :cond_55
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 58
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v6, 0x7f100586

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, "ivImageMyPoint":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1054"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 60
    const v5, 0x7f020322

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    sget-object v5, Lcom/bzbs/data/AppSetting;->URL_MY_POINT_TH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :goto_7e
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v6, 0x7f100156

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 68
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/util/DialogMyPoint$1;

    invoke-direct {v5}, Lcom/samsung/privilege/util/DialogMyPoint$1;-><init>()V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    sget-object v5, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 81
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "webMyPoint":Landroid/webkit/WebView;
    .end local v4    # "webSettings":Landroid/webkit/WebSettings;
    :cond_ad
    return-void

    .line 63
    .restart local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    .restart local v3    # "webMyPoint":Landroid/webkit/WebView;
    .restart local v4    # "webSettings":Landroid/webkit/WebSettings;
    :cond_ae
    const v5, 0x7f020321

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    sget-object v5, Lcom/bzbs/data/AppSetting;->URL_MY_POINT_EN:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7e

    .line 37
    .end local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    .end local v3    # "webMyPoint":Landroid/webkit/WebView;
    .end local v4    # "webSettings":Landroid/webkit/WebSettings;
    :catch_ba
    move-exception v5

    goto/16 :goto_19
.end method
