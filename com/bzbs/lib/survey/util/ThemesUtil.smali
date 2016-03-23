.class public Lcom/bzbs/lib/survey/util/ThemesUtil;
.super Ljava/lang/Object;
.source "ThemesUtil.java"


# static fields
.field public static final THEME_BUZZEBEES:I = 0x1

.field public static final THEME_DEFAULT:I = 0x2

.field public static final THEME_SAMSUNG:I = 0x2

.field public static gTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/bzbs/lib/survey/util/ThemesUtil;->gTheme:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeToTheme(Landroid/app/Activity;I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I

    .prologue
    .line 20
    sput p1, Lcom/bzbs/lib/survey/util/ThemesUtil;->gTheme:I

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static onActivityCreateSetTheme(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    sget v0, Lcom/bzbs/lib/survey/util/ThemesUtil;->gTheme:I

    packed-switch v0, :pswitch_data_18

    .line 36
    sget v0, Lcom/bzbs/lib/survey/R$style;->Theme_BuzzeBees:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 39
    :goto_a
    return-void

    .line 30
    :pswitch_b
    sget v0, Lcom/bzbs/lib/survey/R$style;->Theme_BuzzeBees:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_a

    .line 33
    :pswitch_11
    sget v0, Lcom/bzbs/lib/survey/R$style;->Theme_Samsung:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_a

    .line 28
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method
