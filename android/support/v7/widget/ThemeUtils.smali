.class Landroid/support/v7/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[I

.field static final f:[I

.field static final g:[I

.field static final h:[I

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->i:Ljava/lang/ThreadLocal;

    .line 29
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->a:[I

    .line 30
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->b:[I

    .line 31
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->c:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->d:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->e:[I

    .line 34
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->f:[I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->g:[I

    .line 37
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->h:[I

    .line 39
    new-array v0, v3, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->j:[I

    return-void

    .line 35
    :array_50
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->j:[I

    aput p1, v0, v1

    .line 63
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->j:[I

    invoke-static {p0, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    move-result v1

    .line 67
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return v1

    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method static a(Landroid/content/Context;IF)I
    .registers 5

    .prologue
    .line 108
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    .line 109
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 110
    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->b(II)I

    move-result v0

    return v0
.end method

.method private static a()Landroid/util/TypedValue;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 100
    if-nez v0, :cond_14

    .line 101
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 102
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    :cond_14
    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->j:[I

    aput p1, v0, v1

    .line 73
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->j:[I

    invoke-static {p0, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method public static c(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 82
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 85
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->a:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 94
    :goto_16
    return v0

    .line 89
    :cond_17
    invoke-static {}, Landroid/support/v7/widget/ThemeUtils;->a()Landroid/util/TypedValue;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 94
    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;IF)I

    move-result v0

    goto :goto_16
.end method
