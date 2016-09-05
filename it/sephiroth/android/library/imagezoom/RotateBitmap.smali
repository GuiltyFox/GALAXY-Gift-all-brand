.class public Lit/sephiroth/android/library/imagezoom/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b:I

    .line 20
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 21
    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e:I

    div-int/lit8 v1, v1, 0x2

    .line 54
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->f:I

    div-int/lit8 v2, v2, 0x2

    .line 55
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 57
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e:I

    int-to-float v2, v2

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->f:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->c:I

    .line 62
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->d:I

    .line 63
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 25
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b:I

    .line 26
    invoke-direct {p0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e()V

    .line 27
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->f:I

    .line 46
    invoke-direct {p0}, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e()V

    .line 48
    :cond_15
    return-void
.end method

.method public b()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b:I

    if-eqz v1, :cond_2b

    .line 69
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->e:I

    div-int/lit8 v1, v1, 0x2

    .line 70
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->f:I

    div-int/lit8 v2, v2, 0x2

    .line 71
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 72
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 73
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    :cond_2b
    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/RotateBitmap;->c:I

    return v0
.end method
