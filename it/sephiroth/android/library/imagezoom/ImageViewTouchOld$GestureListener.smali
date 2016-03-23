.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouchOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 2
    .param p1, "this$0"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 82
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getScale()F

    move-result v0

    .line 87
    .local v0, "scale":F
    move v1, v0

    .line 88
    .local v1, "targetScale":F
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->onDoubleTapPost(FF)F

    move-result v1

    .line 89
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v2

    const v3, 0x3f666666

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 90
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput v1, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mCurrentScaleFactor:F

    .line 91
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000

    invoke-virtual {v2, v1, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->zoomTo(FFFF)V

    .line 92
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 93
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x44480000

    const/high16 v4, 0x40000000

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v6, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v6, :cond_13

    .line 125
    :cond_12
    :goto_12
    return v2

    .line 115
    :cond_13
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v3, v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_12

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 119
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 121
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_41

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_51

    .line 122
    :cond_41
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    div-float v3, v0, v4

    div-float v4, v1, v4

    const/high16 v5, 0x43960000

    invoke-virtual {v2, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->scrollBy(FFF)V

    .line 123
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 125
    :cond_51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_12
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

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
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    .line 104
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 106
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->scrollBy(FF)V

    .line 107
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_6
.end method
