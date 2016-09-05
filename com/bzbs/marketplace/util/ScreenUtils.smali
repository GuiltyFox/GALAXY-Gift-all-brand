.class public Lcom/bzbs/marketplace/util/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/bzbs/marketplace/util/ScreenUtils;->a:I

    .line 14
    sput v0, Lcom/bzbs/marketplace/util/ScreenUtils;->b:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 30
    if-nez p0, :cond_3

    .line 37
    :goto_2
    return-void

    .line 33
    :cond_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/bzbs/marketplace/util/ScreenUtils;->b:I

    .line 36
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/bzbs/marketplace/util/ScreenUtils;->a:I

    goto :goto_2
.end method
