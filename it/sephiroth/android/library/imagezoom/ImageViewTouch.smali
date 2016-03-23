.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;
    }
.end annotation


# static fields
.field static final MIN_ZOOM:F = 1.0f


# instance fields
.field private listenerSingleTapUp:Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;

.field protected mCurrentScaleFactor:F

.field protected mDoubleTapDirection:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleFactor:F

.field protected mScaleListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;

.field protected mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-super {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mTouchSlop:I

    .line 33
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;

    .line 34
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;

    .line 36
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    const/high16 v0, 0x3f800000

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 40
    iput v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 41
    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .registers 5
    .param p1, "scale"    # F
    .param p2, "maxZoom"    # F

    .prologue
    const/4 v1, 0x1

    .line 85
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_18

    .line 86
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_14

    .line 87
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    add-float p2, p1, v0

    .line 94
    .end local p2    # "maxZoom":F
    :goto_13
    return p2

    .line 89
    .restart local p2    # "maxZoom":F
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    goto :goto_13

    .line 93
    :cond_18
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 94
    const/high16 p2, 0x3f800000

    goto :goto_13
.end method

.method protected onSingleTapUpPost()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->listenerSingleTapUp:Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->listenerSingleTapUp:Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;

    invoke-interface {v0, p0}, Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;->onSingleTapUp(Landroid/view/View;)V

    .line 75
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x3f800000

    .line 51
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_14

    .line 53
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_30

    .line 62
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 57
    :pswitch_22
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    .line 58
    const/high16 v1, 0x42480000

    invoke-virtual {p0, v2, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FF)V

    goto :goto_1d

    .line 55
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method protected onZoom(F)V
    .registers 3
    .param p1, "scale"    # F

    .prologue
    .line 79
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 80
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_d

    .line 81
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 82
    :cond_d
    return-void
.end method

.method public setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V
    .registers 5
    .param p1, "bitmap"    # Lit/sephiroth/android/library/imagezoom/RotateBitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V

    .line 46
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x40400000

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    .line 47
    return-void
.end method

.method public setOnSingleTapUp(Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;)V
    .registers 2
    .param p1, "l"    # Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;

    .prologue
    .line 68
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->listenerSingleTapUp:Lit/sephiroth/android/library/imagezoom/OnSingleTapUpListener;

    .line 69
    return-void
.end method
