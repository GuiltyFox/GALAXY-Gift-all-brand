.class Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(FFFF)V
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;FJFFFF)V
    .registers 10

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->g:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;

    iput p2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->a:F

    iput-wide p3, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->b:J

    iput p5, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->c:F

    iput p6, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->d:F

    iput p7, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->e:F

    iput p8, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->a:F

    iget-wide v4, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 352
    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->c:F

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 353
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->g:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;

    iget v3, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->e:F

    iget v4, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(FFF)V

    .line 355
    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    .line 356
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase$2;->g:Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->p:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    :cond_2a
    return-void
.end method
