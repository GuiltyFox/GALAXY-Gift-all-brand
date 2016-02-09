.class Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 109
    .local v0, "scale":F
    move v1, v0

    .line 110
    .local v1, "targetScale":F
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDoubleTapPost(FF)F

    move-result v1

    .line 111
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    const/high16 v3, 0x3f800000

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 112
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v1, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 113
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000

    invoke-virtual {v2, v1, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FFFF)V

    .line 114
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 115
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

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v6, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v6, :cond_13

    .line 147
    :cond_12
    :goto_12
    return v2

    .line 137
    :cond_13
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v3, v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_12

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 141
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 143
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_41

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_51

    .line 144
    :cond_41
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    div-float v3, v0, v4

    div-float v4, v1, v4

    const/high16 v5, 0x43960000

    invoke-virtual {v2, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->scrollBy(FFF)V

    .line 145
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 147
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

    .line 120
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 130
    :cond_6
    :goto_6
    return v0

    .line 122
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 124
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_6

    .line 126
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 128
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->scrollBy(FF)V

    .line 129
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_6
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSingleTapUpPost()V

    .line 103
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
