.class public Lcom/rey/material/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public static a(IF)I
    .registers 4

    .prologue
    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 31
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(IIF)I
    .registers 8

    .prologue
    .line 12
    if-ne p0, p1, :cond_3

    .line 25
    :cond_2
    :goto_2
    return p1

    .line 15
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    move p1, p0

    .line 16
    goto :goto_2

    .line 17
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/rey/material/util/ColorUtil;->b(IIF)I

    move-result v0

    .line 21
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/rey/material/util/ColorUtil;->b(IIF)I

    move-result v1

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/rey/material/util/ColorUtil;->b(IIF)I

    move-result v2

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/rey/material/util/ColorUtil;->b(IIF)I

    move-result v3

    .line 25
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_2
.end method

.method private static b(IIF)I
    .registers 5

    .prologue
    .line 8
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
