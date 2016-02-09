.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_x:F

.field old_y:F

.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic val$durationMs:F

.field private final synthetic val$dx:F

.field private final synthetic val$dy:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFF)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:F

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 349
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 354
    .local v2, "now":J
    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iget-wide v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 355
    .local v1, "currentMs":F
    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iget v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    invoke-static {v1, v9, v6, v7}, Lit/sephiroth/android/library/imagezoom/Cubic;->easeOut(FFFF)F

    move-result v4

    .line 356
    .local v4, "x":F
    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:F

    iget v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    invoke-static {v1, v9, v6, v7}, Lit/sephiroth/android/library/imagezoom/Cubic;->easeOut(FFFF)F

    move-result v5

    .line 357
    .local v5, "y":F
    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:F

    sub-float v7, v4, v7

    iget v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(FF)V

    .line 358
    iput v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 359
    iput v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:F

    .line 360
    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_40

    .line 361
    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v6, v6, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_3f
    :goto_3f
    return-void

    .line 363
    :cond_40
    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v6, v10, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 364
    .local v0, "centerRect":Landroid/graphics/RectF;
    iget v6, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_52

    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_3f

    :cond_52
    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    goto :goto_3f
.end method
