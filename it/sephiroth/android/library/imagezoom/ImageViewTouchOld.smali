.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.source "ImageViewTouchOld.java"


# instance fields
.field protected l:Landroid/view/ScaleGestureDetector;

.field protected m:Landroid/view/GestureDetector;

.field protected n:I

.field protected o:F

.field protected p:F

.field protected q:I

.field protected r:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;

.field protected s:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-super {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 29
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->n:I

    .line 30
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->r:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;

    .line 31
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->s:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;

    .line 33
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->s:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    .line 34
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->r:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->m:Landroid/view/GestureDetector;

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->o:F

    .line 36
    iput v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->q:I

    .line 37
    return-void
.end method

.method protected a(F)V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(F)V

    .line 64
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_d

    .line 65
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->o:F

    .line 66
    :cond_d
    return-void
.end method

.method protected e(FF)F
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 69
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->q:I

    if-ne v0, v1, :cond_18

    .line 70
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->p:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_14

    .line 71
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->p:F

    add-float p2, p1, v0

    .line 78
    :goto_13
    return p2

    .line 73
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->q:I

    goto :goto_13

    .line 77
    :cond_18
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->q:I

    .line 78
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_13
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->l:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_14

    .line 49
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_2e

    .line 58
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 53
    :pswitch_1f
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getScale()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    .line 54
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->b(FF)V

    goto :goto_1d

    .line 51
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
