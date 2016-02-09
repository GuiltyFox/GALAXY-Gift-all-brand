.class public Lit/sephiroth/android/library/imagezoom/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeOut(FFFF)F
    .registers 6
    .param p0, "time"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 7
    div-float v0, p0, p3

    sub-float p0, v0, v1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method
