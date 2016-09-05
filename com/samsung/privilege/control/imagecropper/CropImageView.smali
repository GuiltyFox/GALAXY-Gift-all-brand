.class Lcom/samsung/privilege/control/imagecropper/CropImageView;
.super Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/control/imagecropper/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

.field c:F

.field d:F

.field e:I

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 39
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->q:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 87
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 89
    invoke-virtual {v0, v2}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Z)V

    .line 90
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c()V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 93
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    :cond_1f
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_49

    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(FF)I

    move-result v1

    .line 96
    if-eq v1, v4, :cond_1d

    .line 97
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v1

    if-nez v1, :cond_49

    .line 98
    invoke-virtual {v0, v4}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Z)V

    .line 99
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c()V

    .line 104
    :cond_49
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->invalidate()V

    .line 105
    return-void
.end method

.method private b(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v1, p1, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 206
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->l:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 207
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->m:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 209
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->n:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 210
    iget v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->o:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 212
    if-eqz v2, :cond_36

    .line 213
    :goto_2a
    if-eqz v0, :cond_38

    .line 215
    :goto_2c
    if-nez v2, :cond_30

    if-eqz v0, :cond_35

    .line 216
    :cond_30
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b(FF)V

    .line 218
    :cond_35
    return-void

    :cond_36
    move v2, v3

    .line 212
    goto :goto_2a

    :cond_38
    move v0, v1

    .line 213
    goto :goto_2c
.end method

.method private c(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 224
    iget-object v0, p1, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 230
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 232
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 233
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 235
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a()F

    move-result v1

    mul-float/2addr v0, v1

    .line 237
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 238
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_68

    .line 239
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    .line 240
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 241
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 242
    aget v2, v1, v6

    aget v1, v1, v7

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(FFFF)V

    .line 245
    :cond_68
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .registers 6

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(FF)V

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 78
    iget-object v2, v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c()V

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 81
    :cond_21
    return-void
.end method

.method protected a(FFF)V
    .registers 8

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->a(FFF)V

    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 47
    iget-object v2, v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 48
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c()V

    goto :goto_9

    .line 50
    :cond_22
    return-void
.end method

.method public a(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->invalidate()V

    .line 261
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 253
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Landroid/graphics/Canvas;)V

    .line 252
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 255
    :cond_1c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/samsung/privilege/control/imagecropper/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 25
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->h:Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 27
    iget-object v2, v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c()V

    .line 29
    iget-boolean v2, v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b:Z

    if-eqz v2, :cond_11

    .line 30
    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    goto :goto_11

    .line 34
    :cond_31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->q:Landroid/content/Context;

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/CropImage;

    .line 111
    iget-boolean v1, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->c:Z

    if-eqz v1, :cond_b

    .line 198
    :goto_a
    return v2

    .line 115
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_10c

    .line 183
    :cond_12
    :goto_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_116

    :cond_19
    :goto_19
    move v2, v5

    .line 198
    goto :goto_a

    .line 117
    :pswitch_1b
    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->b:Z

    if-eqz v0, :cond_23

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_12

    :cond_23
    move v1, v2

    .line 120
    :goto_24
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(FF)I

    move-result v2

    .line 123
    if-eq v2, v5, :cond_61

    .line 124
    iput v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->e:I

    .line 125
    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c:F

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->d:F

    .line 128
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_5e

    sget-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    :goto_5a
    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;)V

    goto :goto_12

    :cond_5e
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->c:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    goto :goto_5a

    .line 120
    :cond_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 138
    :pswitch_65
    iget-boolean v1, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->b:Z

    if-eqz v1, :cond_ad

    move v3, v2

    .line 139
    :goto_6a
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_bd

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    .line 141
    invoke-virtual {v1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 142
    iput-object v1, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    move v4, v2

    .line 143
    :goto_83
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_9d

    .line 144
    if-ne v4, v3, :cond_91

    .line 143
    :goto_8d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_83

    .line 147
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b(Z)V

    goto :goto_8d

    .line 149
    :cond_9d
    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->q:Landroid/content/Context;

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/CropImage;

    iput-boolean v2, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->b:Z

    move v2, v5

    .line 151
    goto/16 :goto_a

    .line 139
    :cond_a9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6a

    .line 154
    :cond_ad
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    if-eqz v0, :cond_bd

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;)V

    .line 159
    :cond_bd
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    goto/16 :goto_12

    .line 162
    :pswitch_c2
    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->b:Z

    if-eqz v0, :cond_cb

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_12

    .line 164
    :cond_cb
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    if-eqz v0, :cond_12

    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->e:I

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c:F

    sub-float/2addr v2, v3

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->d:F

    sub-float/2addr v3, v4

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a(IFF)V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->c:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->d:F

    .line 177
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->b(Lcom/samsung/privilege/control/imagecropper/HighlightView;)V

    goto/16 :goto_12

    .line 185
    :pswitch_f7
    invoke-virtual {p0, v5, v5}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(ZZ)V

    goto/16 :goto_19

    .line 192
    :pswitch_fc
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 193
    invoke-virtual {p0, v5, v5}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(ZZ)V

    goto/16 :goto_19

    .line 115
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_65
        :pswitch_c2
    .end packed-switch

    .line 183
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_fc
    .end packed-switch
.end method
