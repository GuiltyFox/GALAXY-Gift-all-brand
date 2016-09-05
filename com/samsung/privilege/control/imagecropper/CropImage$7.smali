.class Lcom/samsung/privilege/control/imagecropper/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;
.end annotation


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field c:[Landroid/media/FaceDetector$Face;

.field d:I

.field final synthetic e:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 3

    .prologue
    .line 486
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    .line 490
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method private a()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 539
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;-><init>(Landroid/view/View;)V

    .line 541
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 542
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 544
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 547
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v3, v1, 0x5

    .line 550
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v1

    if-eqz v1, :cond_af

    .line 552
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_9e

    .line 554
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v3

    .line 561
    :goto_5a
    sub-int v3, v6, v4

    div-int/lit8 v6, v3, 0x2

    .line 562
    sub-int v3, v7, v1

    div-int/lit8 v7, v3, 0x2

    .line 564
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v7

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-direct {v3, v8, v9, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 565
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->e(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z

    move-result v4

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v6}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v6

    if-eqz v6, :cond_86

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v6}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v6

    if-eqz v6, :cond_86

    const/4 v5, 0x1

    :cond_86
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 567
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 569
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    .line 570
    return-void

    .line 557
    :cond_9e
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v1

    move v1, v3

    goto :goto_5a

    :cond_af
    move v1, v3

    move v4, v3

    goto :goto_5a
.end method

.method private a(Landroid/media/FaceDetector$Face;)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 496
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 498
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 499
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 500
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 501
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 503
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v2

    .line 504
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    .line 506
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/privilege/control/imagecropper/HighlightView;-><init>(Landroid/view/View;)V

    .line 508
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 509
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 511
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 513
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v6

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-direct {v3, v7, v8, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 514
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 515
    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_6b

    .line 516
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 519
    :cond_6b
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_7a

    .line 520
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 523
    :cond_7a
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_92

    .line 524
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 527
    :cond_92
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_aa

    .line 528
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 531
    :cond_aa
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->e(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z

    move-result v4

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v6}, Lcom/samsung/privilege/control/imagecropper/CropImage;->f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v6

    if-eqz v6, :cond_c3

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v6}, Lcom/samsung/privilege/control/imagecropper/CropImage;->g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I

    move-result v6

    if-eqz v6, :cond_c3

    const/4 v5, 0x1

    :cond_c3
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 533
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    .line 534
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V
    .registers 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/imagecropper/CropImage$7;Landroid/media/FaceDetector$Face;)V
    .registers 2

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    .line 577
    const/4 v0, 0x0

    .line 587
    :goto_a
    return-object v0

    .line 581
    :cond_b
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_29

    .line 583
    const/high16 v0, 0x43800000    # 256.0f

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    .line 585
    :cond_29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 586
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 587
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->b:Landroid/graphics/Matrix;

    .line 593
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->a:F

    .line 596
    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->h(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 597
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 598
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->d:I

    .line 601
    :cond_39
    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_4c

    .line 602
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 603
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    :cond_4c
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;->e:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->d(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7$1;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    return-void
.end method
