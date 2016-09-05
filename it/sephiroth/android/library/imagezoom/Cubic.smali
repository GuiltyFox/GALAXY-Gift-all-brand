.class public Lit/sephiroth/android/library/imagezoom/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# direct methods
.method public static a(FFFF)F
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    div-float v0, p0, p3

    sub-float/2addr v0, v2

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method
