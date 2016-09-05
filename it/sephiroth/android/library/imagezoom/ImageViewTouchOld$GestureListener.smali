.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouchOld.java"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    .line 86
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getScale()F

    move-result v0

    .line 88
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->e(FF)F

    move-result v0

    .line 89
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 90
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->o:F

    .line 91
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->a(FFFF)V

    .line 92
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 93
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_13

    .line 125
    :cond_12
    :goto_12
    return v0

    .line 115
    :cond_13
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_12

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 121
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4d

    .line 122
    :cond_3f
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v2, v0, v1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->c(FFF)V

    .line 123
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 125
    :cond_4d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_12
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 108
    :cond_6
    :goto_6
    return v0

    .line 100
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 102
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    .line 104
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 106
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->c(FF)V

    .line 107
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_6
.end method
