.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "image"


# instance fields
.field protected final MAX_ZOOM:F

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

.field protected final mMatrixValues:[F

.field protected mMaxZoom:F

.field protected mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field protected mThisHeight:I

.field protected mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 34
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 36
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    .line 37
    const/high16 v0, 0x40000000

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 44
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 34
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 36
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    .line 37
    const/high16 v0, 0x40000000

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 51
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .registers 6
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    .line 232
    :cond_9
    :goto_9
    return-void

    .line 228
    :cond_a
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 229
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 230
    :cond_1a
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    goto :goto_9
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 65
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 396
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 397
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    :cond_1d
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->clear()V

    .line 401
    return-void
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v1, 0x0

    .line 212
    :goto_a
    return-object v1

    .line 209
    :cond_b
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 210
    .local v0, "m":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 211
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_a
.end method

.method protected getCenter(ZZ)Landroid/graphics/RectF;
    .registers 14
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v10, 0x40000000

    const/4 v9, 0x0

    .line 241
    iget-object v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v7}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_11

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    :goto_10
    return-object v7

    .line 242
    :cond_11
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 243
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 244
    .local v2, "height":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 245
    .local v6, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 246
    .local v1, "deltaY":F
    if-eqz p2, :cond_31

    .line 247
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 248
    .local v4, "viewHeight":I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_49

    .line 249
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 256
    .end local v4    # "viewHeight":I
    :cond_31
    :goto_31
    if-eqz p1, :cond_43

    .line 257
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v5

    .line 258
    .local v5, "viewWidth":I
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_64

    .line 259
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 266
    .end local v5    # "viewWidth":I
    :cond_43
    :goto_43
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0, v1, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_10

    .line 250
    .restart local v4    # "viewHeight":I
    :cond_49
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_53

    .line 251
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_31

    .line 252
    :cond_53
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_31

    .line 253
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_31

    .line 260
    .end local v4    # "viewHeight":I
    .restart local v5    # "viewWidth":I
    :cond_64
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6e

    .line 261
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_43

    .line 262
    :cond_6e
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_43

    .line 263
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_43
.end method

.method public getDisplayBitmap()Lit/sephiroth/android/library/imagezoom/RotateBitmap;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 176
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V
    .registers 13
    .param p1, "bitmap"    # Lit/sephiroth/android/library/imagezoom/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x40000000

    .line 187
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 188
    .local v4, "viewWidth":F
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 189
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 190
    .local v5, "w":F
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 191
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 192
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 193
    .local v6, "widthScale":F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 194
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 195
    .local v2, "scale":F
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 196
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 198
    return-void
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 203
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    return-void
.end method

.method protected maxZoom()F
    .registers 6

    .prologue
    .line 132
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    const/high16 v2, 0x3f800000

    .line 137
    :goto_a
    return v2

    .line 133
    :cond_b
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 134
    .local v1, "fw":F
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 135
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000

    mul-float v2, v3, v4

    .line 136
    .local v2, "max":F
    const/high16 v2, 0x40a00000

    .line 137
    goto :goto_a
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 71
    sub-int v1, p4, p2

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 72
    sub-int v1, p5, p3

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 73
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 74
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_15

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 76
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    :cond_15
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 79
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 80
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Layout:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 82
    :cond_2d
    return-void
.end method

.method protected onZoom(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 307
    return-void
.end method

.method protected panBy(FF)V
    .registers 8
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 317
    .local v0, "rect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 318
    .local v1, "srect":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 319
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 320
    invoke-virtual {p0, v4, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 321
    return-void
.end method

.method protected postScale(FFF)V
    .registers 6
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 277
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 278
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Zoom:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 279
    return-void
.end method

.method protected postTranslate(FF)V
    .registers 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 271
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 272
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Move:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 273
    return-void
.end method

.method public scrollBy(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(FF)V

    .line 312
    return-void
.end method

.method protected scrollBy(FFF)V
    .registers 12
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "durationMs"    # F

    .prologue
    .line 343
    move v6, p1

    .line 344
    .local v6, "dx":F
    move v7, p2

    .line 345
    .local v7, "dy":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    .local v4, "startTime":J
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 154
    return-void
.end method

.method protected setImageBitmap(Landroid/graphics/Bitmap;I)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_d
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v1, p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v1, p2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->setRotation(I)V

    .line 170
    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "reset"    # Z

    .prologue
    .line 91
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-direct {v0, p1, p2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V

    .line 92
    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 86
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V

    .line 87
    return-void
.end method

.method protected setImageMatrix(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "command"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 236
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 237
    return-void
.end method

.method public setImageRotateBitmapReset(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V
    .registers 6
    .param p1, "bitmap"    # Lit/sephiroth/android/library/imagezoom/RotateBitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 96
    const-string/jumbo v1, "image"

    const-string/jumbo v2, "setImageRotateBitmapReset"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 99
    .local v0, "viewWidth":I
    if-gtz v0, :cond_17

    .line 100
    new-instance v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Lit/sephiroth/android/library/imagezoom/RotateBitmap;Z)V

    iput-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 128
    :cond_16
    :goto_16
    return-void

    .line 110
    :cond_17
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 111
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 112
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getRotation()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 118
    :goto_2d
    if-eqz p2, :cond_34

    .line 119
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 122
    :cond_34
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Reset:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 123
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 125
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    if-eqz v1, :cond_16

    .line 126
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;->onBitmapChanged(Landroid/graphics/Bitmap;)V

    goto :goto_16

    .line 114
    :cond_51
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2d
.end method

.method public setOnBitmapChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    .line 55
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 9
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;
    .param p2, "scrollRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 326
    .local v2, "width":F
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 329
    .local v1, "height":F
    :try_start_b
    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1a

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_1a

    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/RectF;->top:F

    .line 330
    :cond_1a
    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_29

    iget v3, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_29

    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/RectF;->left:F

    .line 331
    :cond_29
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_40

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_40

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p2, Landroid/graphics/RectF;->top:F

    .line 332
    :cond_40
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    sub-float v4, v1, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5a

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5a

    sub-float v3, v1, v5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p2, Landroid/graphics/RectF;->top:F

    .line 333
    :cond_5a
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_6b

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float v3, v5, v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p2, Landroid/graphics/RectF;->left:F

    .line 334
    :cond_6b
    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v4, v2, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7f

    sub-float v3, v2, v5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p2, Landroid/graphics/RectF;->left:F
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7f} :catch_80

    .line 339
    :cond_7f
    :goto_7f
    return-void

    .line 336
    :catch_80
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while updateRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f
.end method

.method protected zoomTo(F)V
    .registers 6
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 283
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 284
    .local v0, "cx":F
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 285
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 286
    return-void
.end method

.method public zoomTo(FF)V
    .registers 7
    .param p1, "scale"    # F
    .param p2, "durationMs"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 290
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 291
    .local v0, "cx":F
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 292
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    .line 293
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 297
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    iget p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 298
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 299
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 300
    .local v0, "deltaScale":F
    invoke-virtual {p0, v0, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 301
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 302
    invoke-virtual {p0, v3, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 303
    return-void
.end method

.method protected zoomTo(FFFF)V
    .registers 15
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 374
    .local v4, "startTime":J
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 375
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 376
    .local v6, "oldScale":F
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method
