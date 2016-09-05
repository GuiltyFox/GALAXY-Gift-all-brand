.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouchOld.java"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const v4, 0x3f666666    # 0.9f

    .line 134
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    .line 135
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->o:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 137
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 138
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->b(FFF)V

    .line 139
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->o:F

    .line 140
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->q:I

    .line 141
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 142
    return v5
.end method
