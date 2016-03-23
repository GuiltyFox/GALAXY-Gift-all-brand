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
    .line 19
    const-class v0, Lcom/samsung/privilege/util/DialogMyPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    return-object v0
.end method

.method public static showDialogMyPoint(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 25
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_76

    .line 26
    sput-object p0, Lcom/samsung/privilege/util/DialogMyPoint;->gActivityContext:Landroid/content/Context;

    .line 28
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 31
    :try_start_e
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    if-eqz v3, :cond_17

    .line 32
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_7e

    .line 37
    :cond_17
    :goto_17
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f0d00fc

    invoke-direct {v3, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    .line 39
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v4, 0x7f04010b

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 41
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v4, 0x7f100576

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    .local v1, "ivImageMyPoint":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 43
    const v3, 0x7f020320

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :goto_47
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    const v4, 0x7f100155

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 49
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/samsung/privilege/util/DialogMyPoint$1;

    invoke-direct {v3}, Lcom/samsung/privilege/util/DialogMyPoint$1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 57
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    sget-object v3, Lcom/samsung/privilege/util/DialogMyPoint;->gDialogMyPoint:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 62
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    :cond_76
    return-void

    .line 45
    .restart local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    :cond_77
    const v3, 0x7f02031f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 34
    .end local v1    # "ivImageMyPoint":Landroid/widget/ImageView;
    :catch_7e
    move-exception v3

    goto :goto_17
.end method
