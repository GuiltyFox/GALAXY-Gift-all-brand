.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouchOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    const v5, 0x3f666666

    .line 134
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    sub-float v0, v2, v3

    .line 135
    .local v0, "span":F
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mCurrentScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float v1, v2, v3

    .line 137
    .local v1, "targetScale":F
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 138
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->zoomTo(FFF)V

    .line 139
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getMaxZoom()F

    move-result v3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mCurrentScaleFactor:F

    .line 140
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    iput v6, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->mDoubleTapDirection:I

    .line 141
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld$ScaleListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->invalidate()V

    .line 142
    return v6
.end method
