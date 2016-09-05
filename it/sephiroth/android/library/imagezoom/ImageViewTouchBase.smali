.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected c:Landroid/os/Handler;

.field protected d:Ljava/lang/Runnable;

.field protected e:F

.field protected final f:Landroid/graphics/Matrix;

.field protected final g:[F

.field protected h:I

.field protected i:I

.field protected final j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

.field protected final k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Landroid/os/Handler;

    .line 30
    iput-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:[F

    .line 34
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    .line 36
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:F

    .line 44
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Landroid/os/Handler;

    .line 30
    iput-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:[F

    .line 34
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    .line 36
    new-instance v0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:F

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 51
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 203
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    return-void
.end method

.method protected a(F)V
    .registers 2

    .prologue
    .line 307
    return-void
.end method

.method protected a(FF)V
    .registers 5

    .prologue
    .line 271
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 272
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 273
    return-void
.end method

.method protected a(FFF)V
    .registers 6

    .prologue
    .line 277
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 278
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 279
    return-void
.end method

.method protected a(FFFF)V
    .registers 15

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 374
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 375
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 376
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Landroid/os/Handler;

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

.method protected a(Landroid/graphics/Bitmap;I)V
    .registers 5

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_d

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_d
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0, p2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a(I)V

    .line 170
    return-void
.end method

.method protected a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 326
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 329
    :try_start_b
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1a

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1a

    const/4 v2, 0x0

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 330
    :cond_1a
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_29

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_29

    const/4 v2, 0x0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 331
    :cond_29
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_40

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_40

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 332
    :cond_40
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_59

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_59

    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 333
    :cond_59
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_6a

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 334
    :cond_6a
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    sub-float v2, v0, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7d

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7d} :catch_7e

    .line 339
    :cond_7d
    :goto_7d
    return-void

    .line 336
    :catch_7e
    move-exception v0

    .line 337
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while updateRect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method protected a(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 237
    return-void
.end method

.method protected a(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 187
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 188
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 189
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->d()I

    move-result v2

    int-to-float v2, v2

    .line 190
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->c()I

    move-result v3

    int-to-float v3, v3

    .line 191
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 192
    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 193
    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 195
    invoke-virtual {p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 196
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 198
    return-void
.end method

.method protected a(ZZ)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    .line 232
    :cond_9
    :goto_9
    return-void

    .line 228
    :cond_a
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 229
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 230
    :cond_1a
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FF)V

    goto :goto_9
.end method

.method protected b()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 176
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected b(ZZ)Landroid/graphics/RectF;
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    :goto_10
    return-object v0

    .line 242
    :cond_11
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c()Landroid/graphics/RectF;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 244
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 246
    if-eqz p2, :cond_7c

    .line 247
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v3

    .line 248
    int-to-float v5, v3

    cmpg-float v5, v0, v5

    if-gez v5, :cond_48

    .line 249
    int-to-float v3, v3

    sub-float v0, v3, v0

    div-float/2addr v0, v6

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    move v3, v0

    .line 256
    :goto_30
    if-eqz p1, :cond_7a

    .line 257
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 258
    int-to-float v5, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_64

    .line 259
    int-to-float v0, v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 266
    :goto_41
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    goto :goto_10

    .line 250
    :cond_48
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    .line 251
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    move v3, v0

    goto :goto_30

    .line 252
    :cond_53
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7c

    .line 253
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    move v3, v0

    goto :goto_30

    .line 260
    :cond_64
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_6e

    .line 261
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_41

    .line 262
    :cond_6e
    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7a

    .line 263
    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_41

    :cond_7a
    move v0, v1

    goto :goto_41

    :cond_7c
    move v3, v1

    goto :goto_30
.end method

.method public b(FF)V
    .registers 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 290
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 291
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 292
    invoke-virtual {p0, p1, v0, v1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFFF)V

    .line 293
    return-void
.end method

.method protected b(FFF)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 297
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    .line 298
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 299
    div-float v0, p1, v0

    .line 300
    invoke-virtual {p0, v0, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 301
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(F)V

    .line 302
    invoke-virtual {p0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(ZZ)V

    .line 303
    return-void
.end method

.method protected c()Landroid/graphics/RectF;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 212
    :goto_a
    return-object v0

    .line 209
    :cond_b
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v1

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 211
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_a
.end method

.method public c(FF)V
    .registers 3

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(FF)V

    .line 312
    return-void
.end method

.method protected c(FFF)V
    .registers 12

    .prologue
    .line 343
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Landroid/os/Handler;

    new-instance v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method protected d(FF)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c()Landroid/graphics/RectF;

    move-result-object v0

    .line 317
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 318
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 319
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FF)V

    .line 320
    invoke-virtual {p0, v3, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(ZZ)V

    .line 321
    return-void
.end method

.method public getMaxZoom()F
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 71
    sub-int v0, p4, p2

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:I

    .line 72
    sub-int v0, p5, p3

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    .line 73
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 74
    if-eqz v0, :cond_15

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 76
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    :cond_15
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/RotateBitmap;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Lit/sephiroth/android/library/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 80
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->d:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 82
    :cond_2d
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 154
    return-void
.end method
