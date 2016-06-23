.class public Lcom/bzbs/marketplace/util/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field public static final DPI_HDPI:I = 0x3

.field public static final DPI_LDPI:I = 0x1

.field public static final DPI_MDPI:I = 0x2

.field public static final DPI_XHDPI:I = 0x4

.field public static final DPI_XXHDPI:I = 0x5

.field public static final DPI_XXXHDPI:I = 0x6

.field public static final SCREEN_MOBILE:I = 0x1

.field public static final SCREEN_TABLET_10:I = 0x3

.field public static final SCREEN_TABLET_7:I = 0x2

.field public static final STR_SCREEN_MOBILE:Ljava/lang/String; = "mobile"

.field public static final STR_SCREEN_TABLET_10:Ljava/lang/String; = "tablet 10"

.field public static final STR_SCREEN_TABLET_7:Ljava/lang/String; = "tablet 7"

.field public static ScreenHeight:I

.field public static ScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/bzbs/marketplace/util/ScreenUtils;->ScreenWidth:I

    .line 14
    sput v0, Lcom/bzbs/marketplace/util/ScreenUtils;->ScreenHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityName(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 69
    .local v0, "density":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4010000000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_13

    .line 70
    const/4 v1, 0x6

    .line 84
    :goto_12
    return v1

    .line 72
    :cond_13
    float-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1c

    .line 73
    const/4 v1, 0x5

    goto :goto_12

    .line 75
    :cond_1c
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_25

    .line 76
    const/4 v1, 0x4

    goto :goto_12

    .line 78
    :cond_25
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2e

    .line 79
    const/4 v1, 0x3

    goto :goto_12

    .line 81
    :cond_2e
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_37

    .line 82
    const/4 v1, 0x2

    goto :goto_12

    .line 84
    :cond_37
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public static getDp(Landroid/app/Activity;I)I
    .registers 4
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "dimenId"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getRealDp(Landroid/app/Activity;I)I
    .registers 4
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "dimenId"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static initScreen(Landroid/app/Activity;)V
    .registers 3
    .param p0, "mActivity"    # Landroid/app/Activity;

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
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/bzbs/marketplace/util/ScreenUtils;->ScreenHeight:I

    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bzbs/marketplace/util/ScreenUtils;->ScreenWidth:I

    goto :goto_2
.end method

.method public static pixelToDips(Landroid/app/Activity;F)I
    .registers 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "pixels"    # F

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
