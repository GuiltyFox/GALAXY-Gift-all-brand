.class public Lcom/rey/material/util/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# static fields
.field private static a:Landroid/util/TypedValue;


# direct methods
.method public static a(Landroid/content/Context;I)I
    .registers 5

    .prologue
    .line 17
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/content/Context;II)I
    .registers 6

    .prologue
    .line 25
    sget-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    .line 29
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_2e

    sget-object v1, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31
    sget-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2f

    sget-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2f

    .line 32
    sget-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 39
    :cond_2e
    :goto_2e
    return p2

    .line 33
    :cond_2f
    sget-object v0, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/rey/material/util/ThemeUtil;->a:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_43

    move-result p2

    goto :goto_2e

    .line 37
    :catch_43
    move-exception v0

    goto :goto_2e
.end method

.method public static a(Landroid/content/res/TypedArray;I)I
    .registers 4

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 120
    :goto_a
    return v0

    .line 119
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 120
    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 57
    const v0, 0x1010433

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    .line 59
    :goto_d
    return v0

    :cond_e
    sget v0, Lcom/rey/material/R$attr;->colorPrimary:I

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 81
    const v0, 0x1010429

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    .line 83
    :goto_d
    return v0

    :cond_e
    sget v0, Lcom/rey/material/R$attr;->colorControlNormal:I

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 89
    const v0, 0x101042a

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    .line 91
    :goto_d
    return v0

    :cond_e
    sget v0, Lcom/rey/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    goto :goto_d
.end method

.method public static e(Landroid/content/Context;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 97
    const v0, 0x101042c

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    .line 99
    :goto_d
    return v0

    :cond_e
    sget v0, Lcom/rey/material/R$attr;->colorControlHighlight:I

    invoke-static {p0, v0, p1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;II)I

    move-result v0

    goto :goto_d
.end method
