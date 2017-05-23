.class public Lcom/samsung/privilege/util/DialogMyPoint;
.super Ljava/lang/Object;
.source "DialogMyPoint.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/privilege/util/DialogMyPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 29
    sput-object p0, Lcom/samsung/privilege/util/DialogMyPoint;->b:Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 34
    :try_start_10
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_19

    .line 35
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_a3

    .line 40
    :cond_19
    :goto_19
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0c00ff

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    .line 42
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    const v1, 0x7f0400ae

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 44
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 45
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 46
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 49
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_55

    .line 52
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 56
    :cond_55
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1054"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 59
    sget-object v1, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    :goto_6d
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    const v1, 0x7f1003c4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 65
    new-instance v1, Lcom/samsung/privilege/util/DialogMyPoint$1;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogMyPoint$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 74
    sget-object v1, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 78
    :cond_9c
    return-void

    .line 61
    :cond_9d
    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6d

    .line 37
    :catch_a3
    move-exception v0

    goto/16 :goto_19
.end method
