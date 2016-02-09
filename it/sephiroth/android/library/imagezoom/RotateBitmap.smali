.class public Lit/sephiroth/android/library/imagezoom/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mHeight:I

.field private mRotation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    .line 20
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    return-void
.end method

.method private invalidate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 52
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapWidth:I

    div-int/lit8 v0, v4, 0x2

    .line 54
    .local v0, "cx":I
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapHeight:I

    div-int/lit8 v1, v4, 0x2

    .line 55
    .local v1, "cy":I
    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 57
    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapHeight:I

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mWidth:I

    .line 62
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mHeight:I

    .line 63
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mHeight:I

    return v0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .registers 6

    .prologue
    .line 67
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    if-eqz v3, :cond_2b

    .line 69
    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapWidth:I

    div-int/lit8 v0, v3, 0x2

    .line 70
    .local v0, "cx":I
    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapHeight:I

    div-int/lit8 v1, v3, 0x2

    .line 71
    .local v1, "cy":I
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 72
    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 73
    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_2b
    return-object v2
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mWidth:I

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    :cond_c
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapWidth:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mBitmapHeight:I

    .line 46
    invoke-direct {p0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->invalidate()V

    .line 48
    :cond_15
    return-void
.end method

.method public setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .prologue
    .line 25
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->mRotation:I

    .line 26
    invoke-direct {p0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->invalidate()V

    .line 27
    return-void
.end method
