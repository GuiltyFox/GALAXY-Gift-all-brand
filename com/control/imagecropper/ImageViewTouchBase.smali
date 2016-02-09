.class abstract Lcom/control/imagecropper/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/control/imagecropper/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

.field mBottom:I

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field mLeft:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/control/imagecropper/ImageViewTouchBase$Recycler;

.field mRight:I

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 242
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/control/imagecropper/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisHeight:I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 243
    invoke-direct {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->init()V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/control/imagecropper/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisHeight:I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 249
    invoke-direct {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->init()V

    .line 250
    return-void
.end method

.method private getProperBaseMatrix(Lcom/control/imagecropper/RotateBitmap;Landroid/graphics/Matrix;)V
    .registers 14
    .param p1, "bitmap"    # Lcom/control/imagecropper/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v10, 0x40000000

    .line 277
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v8

    int-to-float v5, v8

    .line 278
    .local v5, "viewWidth":F
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v4, v8

    .line 280
    .local v4, "viewHeight":F
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getWidth()I

    move-result v8

    int-to-float v6, v8

    .line 281
    .local v6, "w":F
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 282
    .local v0, "h":F
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getRotation()I

    move-result v2

    .line 283
    .local v2, "rotation":I
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 287
    div-float v8, v5, v6

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 288
    .local v7, "widthScale":F
    div-float v8, v4, v0

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 289
    .local v1, "heightScale":F
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 291
    .local v3, "scale":F
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 292
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 295
    mul-float v8, v6, v3

    sub-float v8, v5, v8

    div-float/2addr v8, v10

    .line 296
    mul-float v9, v0, v3

    sub-float v9, v4, v9

    div-float/2addr v9, v10

    .line 294
    invoke-virtual {p2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 297
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 254
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 136
    :cond_d
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v2}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/control/imagecropper/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/control/imagecropper/RotateBitmap;->setRotation(I)V

    .line 140
    if-eqz v1, :cond_2a

    if-eq v1, p1, :cond_2a

    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mRecycler:Lcom/control/imagecropper/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_2a

    .line 141
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mRecycler:Lcom/control/imagecropper/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/control/imagecropper/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_2a
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .registers 15
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000

    const/4 v10, 0x0

    .line 197
    iget-object v8, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v8}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_c

    .line 238
    :goto_b
    return-void

    .line 201
    :cond_c
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 203
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    .line 204
    iget-object v8, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v8}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 205
    iget-object v9, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v9}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 203
    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 209
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 210
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 212
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 214
    .local v1, "deltaY":F
    if-eqz p2, :cond_4a

    .line 215
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 216
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_67

    .line 217
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 225
    .end local v5    # "viewHeight":I
    :cond_4a
    :goto_4a
    if-eqz p1, :cond_5c

    .line 226
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 227
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_82

    .line 228
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 236
    .end local v6    # "viewWidth":I
    :cond_5c
    :goto_5c
    invoke-virtual {p0, v0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->postTranslate(FF)V

    .line 237
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_b

    .line 218
    .restart local v5    # "viewHeight":I
    :cond_67
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_71

    .line 219
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 220
    goto :goto_4a

    :cond_71
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4a

    .line 221
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_4a

    .line 229
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_82
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8c

    .line 230
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 231
    goto :goto_5c

    :cond_8c
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5c

    .line 232
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_5c
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 148
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 305
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 260
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .registers 6

    .prologue
    .line 316
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v3}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    .line 317
    const/high16 v2, 0x3f800000

    .line 323
    :goto_a
    return v2

    .line 320
    :cond_b
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v3}, Lcom/control/imagecropper/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 321
    .local v1, "fw":F
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v3}, Lcom/control/imagecropper/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 322
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000

    mul-float v2, v3, v4

    .line 323
    .local v2, "max":F
    goto :goto_a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000

    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 114
    invoke-virtual {p0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomTo(F)V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 91
    iput p2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mLeft:I

    .line 92
    iput p4, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mRight:I

    .line 93
    iput p3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mTop:I

    .line 94
    iput p5, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBottom:I

    .line 95
    sub-int v1, p4, p2

    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisWidth:I

    .line 96
    sub-int v1, p5, p3

    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mThisHeight:I

    .line 97
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 98
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_1d

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 100
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 102
    :cond_1d
    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v1}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 103
    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->getProperBaseMatrix(Lcom/control/imagecropper/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 104
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 106
    :cond_33
    return-void
.end method

.method protected panBy(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/control/imagecropper/ImageViewTouchBase;->postTranslate(FF)V

    .line 426
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 427
    return-void
.end method

.method protected postTranslate(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 420
    iget-object v0, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 421
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 126
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 157
    new-instance v0, Lcom/control/imagecropper/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/control/imagecropper/RotateBitmap;Z)V

    .line 158
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/control/imagecropper/RotateBitmap;Z)V
    .registers 6
    .param p1, "bitmap"    # Lcom/control/imagecropper/RotateBitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 165
    .local v0, "viewWidth":I
    if-gtz v0, :cond_e

    .line 166
    new-instance v1, Lcom/control/imagecropper/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/control/imagecropper/ImageViewTouchBase$1;-><init>(Lcom/control/imagecropper/ImageViewTouchBase;Lcom/control/imagecropper/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 188
    :goto_d
    return-void

    .line 175
    :cond_e
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 176
    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->getProperBaseMatrix(Lcom/control/imagecropper/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 177
    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/control/imagecropper/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 183
    :goto_24
    if-eqz p2, :cond_2b

    .line 184
    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 186
    :cond_2b
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 187
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_d

    .line 179
    :cond_39
    iget-object v1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_24
.end method

.method public setRecycler(Lcom/control/imagecropper/ImageViewTouchBase$Recycler;)V
    .registers 2
    .param p1, "r"    # Lcom/control/imagecropper/ImageViewTouchBase$Recycler;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mRecycler:Lcom/control/imagecropper/ImageViewTouchBase$Recycler;

    .line 82
    return-void
.end method

.method protected zoomIn()V
    .registers 2

    .prologue
    .line 372
    const/high16 v0, 0x3fa00000

    invoke-virtual {p0, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomIn(F)V

    .line 373
    return-void
.end method

.method protected zoomIn(F)V
    .registers 7
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000

    .line 382
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    .line 394
    :cond_c
    :goto_c
    return-void

    .line 385
    :cond_d
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v2}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 389
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 390
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 392
    .local v1, "cy":F
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 393
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_c
.end method

.method protected zoomOut()V
    .registers 2

    .prologue
    .line 377
    const/high16 v0, 0x3fa00000

    invoke-virtual {p0, v0}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomOut(F)V

    .line 378
    return-void
.end method

.method protected zoomOut(F)V
    .registers 9
    .param p1, "rate"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000

    const/high16 v5, 0x3f800000

    .line 398
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mBitmapDisplayed:Lcom/control/imagecropper/RotateBitmap;

    invoke-virtual {v3}, Lcom/control/imagecropper/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_e

    .line 416
    :goto_d
    return-void

    .line 402
    :cond_e
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 403
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 406
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 407
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 409
    invoke-virtual {p0, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_42

    .line 410
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 414
    :goto_37
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 415
    invoke-virtual {p0, v6, v6}, Lcom/control/imagecropper/ImageViewTouchBase;->center(ZZ)V

    goto :goto_d

    .line 412
    :cond_42
    iget-object v3, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_37
.end method

.method protected zoomTo(F)V
    .registers 6
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 364
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 365
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 367
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/control/imagecropper/ImageViewTouchBase;->zoomTo(FFF)V

    .line 368
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 328
    iget v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    .line 329
    iget p1, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mMaxZoom:F

    .line 332
    :cond_9
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 333
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 335
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 336
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/control/imagecropper/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 337
    invoke-virtual {p0, v3, v3}, Lcom/control/imagecropper/ImageViewTouchBase;->center(ZZ)V

    .line 338
    return-void
.end method

.method protected zoomTo(FFFF)V
    .registers 15
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 344
    .local v6, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/control/imagecropper/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 345
    .local v5, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 347
    .local v3, "startTime":J
    iget-object v9, p0, Lcom/control/imagecropper/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/control/imagecropper/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/control/imagecropper/ImageViewTouchBase$2;-><init>(Lcom/control/imagecropper/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method
