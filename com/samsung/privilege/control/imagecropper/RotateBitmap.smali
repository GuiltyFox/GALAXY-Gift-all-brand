.class public Lcom/samsung/privilege/control/imagecropper/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    .line 43
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    if-eqz v1, :cond_37

    .line 67
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 68
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 69
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 70
    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 71
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    :cond_37
    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()I
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 86
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_c
.end method

.method public f()I
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 95
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_c
.end method
