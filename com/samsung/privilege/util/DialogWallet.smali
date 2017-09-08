.class public Lcom/samsung/privilege/util/DialogWallet;
.super Ljava/lang/Object;
.source "DialogWallet.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/privilege/util/DialogWallet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogWallet;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const v2, 0x7f100497

    .line 23
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_89

    .line 24
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 27
    :try_start_f
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_18

    .line 28
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_8a

    .line 33
    :cond_18
    :goto_18
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    .line 36
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    const v1, 0x7f0400db

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 40
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    const v1, 0x7f1003fb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 44
    new-instance v1, Lcom/samsung/privilege/util/DialogWallet$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogWallet$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 70
    sget-object v1, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    sget-object v0, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    const v0, 0x7f050018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/samsung/privilege/util/DialogWallet$2;

    invoke-direct {v1}, Lcom/samsung/privilege/util/DialogWallet$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    sget-object v1, Lcom/samsung/privilege/util/DialogWallet;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :cond_89
    return-void

    .line 30
    :catch_8a
    move-exception v0

    goto :goto_18
.end method
