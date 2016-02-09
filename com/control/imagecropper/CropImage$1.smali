.class Lcom/control/imagecropper/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/control/imagecropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    .line 501
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/control/imagecropper/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/control/imagecropper/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .registers 2

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/control/imagecropper/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/control/imagecropper/CropImage$1;)V
    .registers 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/control/imagecropper/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/control/imagecropper/CropImage$1;)Lcom/control/imagecropper/CropImage;
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .registers 15
    .param p1, "f"    # Landroid/media/FaceDetector$Face;

    .prologue
    .line 507
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 509
    .local v7, "midPoint":Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 510
    .local v10, "r":I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 511
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 512
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 514
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 515
    .local v8, "midX":I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 517
    .local v9, "midY":I
    new-instance v0, Lcom/control/imagecropper/HighlightView;

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/control/imagecropper/HighlightView;-><init>(Landroid/view/View;)V

    .line 519
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 520
    .local v11, "width":I
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 522
    .local v6, "height":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 524
    .local v2, "imageRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 525
    .local v3, "faceRect":Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 526
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6c

    .line 527
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 530
    :cond_6c
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7c

    .line 531
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 534
    :cond_7c
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_94

    .line 535
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 538
    :cond_94
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_ac

    .line 539
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 542
    :cond_ac
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/control/imagecropper/CropImage;->access$2(Lcom/control/imagecropper/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    const/4 v5, 0x1

    :goto_c5
    invoke-virtual/range {v0 .. v5}, Lcom/control/imagecropper/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 544
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/control/imagecropper/CropImageView;->add(Lcom/control/imagecropper/HighlightView;)V

    .line 545
    return-void

    .line 542
    :cond_d2
    const/4 v5, 0x0

    goto :goto_c5
.end method

.method private makeDefault()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 550
    new-instance v0, Lcom/control/imagecropper/HighlightView;

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/control/imagecropper/HighlightView;-><init>(Landroid/view/View;)V

    .line 552
    .local v0, "hv":Lcom/control/imagecropper/HighlightView;
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 553
    .local v9, "width":I
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 555
    .local v8, "height":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 558
    .local v2, "imageRect":Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 559
    .local v7, "cropWidth":I
    move v6, v7

    .line 561
    .local v6, "cropHeight":I
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    .line 563
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_a1

    .line 565
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 572
    :cond_5b
    :goto_5b
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 573
    .local v10, "x":I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 575
    .local v11, "y":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 576
    .local v3, "cropRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/control/imagecropper/CropImage;->access$2(Lcom/control/imagecropper/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v12

    if-eqz v12, :cond_89

    iget-object v12, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v12

    if-eqz v12, :cond_89

    const/4 v5, 0x1

    :cond_89
    invoke-virtual/range {v0 .. v5}, Lcom/control/imagecropper/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 578
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/control/imagecropper/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/control/imagecropper/CropImageView;->add(Lcom/control/imagecropper/HighlightView;)V

    .line 581
    return-void

    .line 568
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_a1
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$3(Lcom/control/imagecropper/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/control/imagecropper/CropImage;->access$4(Lcom/control/imagecropper/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_5b
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    .line 588
    const/4 v0, 0x0

    .line 598
    :goto_a
    return-object v0

    .line 592
    :cond_b
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_29

    .line 594
    const/high16 v0, 0x43800000

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    .line 596
    :cond_29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 597
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    iget v2, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 598
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

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
    .line 603
    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/control/imagecropper/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    .line 604
    invoke-direct {p0}, Lcom/control/imagecropper/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 606
    .local v1, "faceBitmap":Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f800000

    iget v3, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/control/imagecropper/CropImage$1;->mScale:F

    .line 607
    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$5(Lcom/control/imagecropper/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 608
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/control/imagecropper/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 609
    .local v0, "detector":Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/control/imagecropper/CropImage$1;->mNumFaces:I

    .line 612
    .end local v0    # "detector":Landroid/media/FaceDetector;
    :cond_39
    if-eqz v1, :cond_4c

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_4c

    .line 613
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 614
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    :cond_4c
    iget-object v2, p0, Lcom/control/imagecropper/CropImage$1;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$6(Lcom/control/imagecropper/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/control/imagecropper/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/control/imagecropper/CropImage$1$1;-><init>(Lcom/control/imagecropper/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    return-void
.end method
