.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(FFF)V
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:F

.field final synthetic d:J

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFF)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 346
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->d:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->e:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:F

    .line 349
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:F

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->d:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 355
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->e:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:F

    invoke-static {v0, v6, v1, v2}, Lit/sephiroth/android/library/imagezoom/Cubic;->a(FFFF)F

    move-result v1

    .line 356
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->f:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:F

    invoke-static {v0, v6, v2, v3}, Lit/sephiroth/android/library/imagezoom/Cubic;->a(FFFF)F

    move-result v2

    .line 357
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:F

    sub-float v4, v1, v4

    iget v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(FF)V

    .line 358
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:F

    .line 359
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:F

    .line 360
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 361
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_3e
    :goto_3e
    return-void

    .line 363
    :cond_3f
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0, v7, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 364
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_51

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3e

    :cond_51
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(FF)V

    goto :goto_3e
.end method
