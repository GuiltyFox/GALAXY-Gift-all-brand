.class Lcom/samsung/privilege/control/imagecropper/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

.field private h:Landroid/graphics/RectF;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    .line 450
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    .line 452
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->k:Z

    .line 458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    .line 459
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    .line 460
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    .line 51
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    .line 52
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const v1, 0x7f020120

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f02011f

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 61
    const v1, 0x7f0201d8

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method private e()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 403
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 405
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 406
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 407
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public a(FF)I
    .registers 12

    .prologue
    const/16 v0, 0x20

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    .line 222
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v5

    .line 226
    iget-boolean v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->k:Z

    if-eqz v2, :cond_5d

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 228
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    .line 229
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 230
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 231
    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 232
    sub-int v6, v4, v5

    .line 233
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_59

    .line 234
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_51

    .line 235
    cmpg-float v0, v3, v8

    if-gez v0, :cond_4e

    .line 236
    const/16 v0, 0x8

    .line 279
    :cond_4d
    :goto_4d
    return v0

    .line 238
    :cond_4e
    const/16 v0, 0x10

    goto :goto_4d

    .line 241
    :cond_51
    cmpg-float v0, v2, v8

    if-gez v0, :cond_57

    .line 242
    const/4 v0, 0x2

    goto :goto_4d

    .line 244
    :cond_57
    const/4 v0, 0x4

    goto :goto_4d

    .line 247
    :cond_59
    if-lt v4, v5, :cond_4d

    move v0, v1

    .line 250
    goto :goto_4d

    .line 255
    :cond_5d
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_cb

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    cmpg-float v2, p2, v2

    if-gez v2, :cond_cb

    move v2, v1

    .line 257
    :goto_6e
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7f

    iget v4, v5, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    cmpg-float v4, p1, v4

    if-gez v4, :cond_7f

    move v3, v1

    .line 261
    :cond_7f
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_cf

    if-eqz v2, :cond_cf

    .line 262
    const/4 v4, 0x3

    .line 264
    :goto_8e
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9e

    if-eqz v2, :cond_9e

    .line 265
    or-int/lit8 v4, v4, 0x4

    .line 267
    :cond_9e
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_ae

    if-eqz v3, :cond_ae

    .line 268
    or-int/lit8 v4, v4, 0x8

    .line 270
    :cond_ae
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_cd

    if-eqz v3, :cond_cd

    .line 271
    or-int/lit8 v4, v4, 0x10

    move v2, v4

    .line 275
    :goto_bf
    if-ne v2, v1, :cond_c9

    float-to-int v1, p1

    float-to-int v3, p2

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4d

    :cond_c9
    move v0, v2

    goto :goto_4d

    :cond_cb
    move v2, v3

    .line 255
    goto :goto_6e

    :cond_cd
    move v2, v4

    goto :goto_bf

    :cond_cf
    move v4, v1

    goto :goto_8e
.end method

.method a(IFF)V
    .registers 9

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 286
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v3

    .line 287
    if-ne p1, v2, :cond_a

    .line 308
    :goto_9
    return-void

    .line 289
    :cond_a
    const/16 v4, 0x20

    if-ne p1, v4, :cond_2c

    .line 291
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    .line 292
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b(FF)V

    goto :goto_9

    .line 294
    :cond_2c
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_31

    move p2, v0

    .line 298
    :cond_31
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_36

    move p3, v0

    .line 303
    :cond_36
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    .line 304
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    .line 305
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_64

    move v0, v1

    :goto_57
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_66

    move v0, v1

    :goto_5e
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c(FF)V

    goto :goto_9

    :cond_64
    move v0, v2

    goto :goto_57

    :cond_66
    move v0, v2

    goto :goto_5e
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 85
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c:Z

    if-eqz v0, :cond_7

    .line 204
    :cond_6
    :goto_6
    return-void

    .line 89
    :cond_7
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-nez v0, :cond_21

    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 94
    :cond_21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 96
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->k:Z

    if-eqz v0, :cond_e6

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 101
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 102
    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 110
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    .line 109
    :goto_6a
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    :goto_70
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->c:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_6

    .line 144
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->k:Z

    if-eqz v0, :cond_1a0

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 148
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 150
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 152
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 154
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 154
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 110
    :cond_e3
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    goto :goto_6a

    .line 117
    :cond_e6
    new-instance v3, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_10c

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_10c

    .line 119
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_193

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    :goto_109
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    :cond_10c
    new-instance v4, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_132

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_132

    .line 123
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_197

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    :goto_12f
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    :cond_132
    new-instance v5, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_158

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_158

    .line 127
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    :goto_155
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    :cond_158
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v0, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_17e

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_17e

    .line 131
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    :goto_17b
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    :cond_17e
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    const/16 v2, -0x7600

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_70

    .line 119
    :cond_193
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    goto/16 :goto_109

    .line 123
    :cond_197
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    goto :goto_12f

    .line 127
    :cond_19a
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    goto :goto_155

    .line 131
    :cond_19d
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    goto :goto_17b

    .line 159
    :cond_1a0
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 160
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 161
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    .line 162
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    .line 164
    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 166
    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 168
    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 170
    iget-object v7, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 173
    iget-object v8, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 175
    iget-object v9, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 178
    iget-object v10, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 11

    .prologue
    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    .line 418
    if-eqz p4, :cond_8

    move p5, v0

    .line 421
    :cond_8
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->f:Landroid/graphics/Matrix;

    .line 423
    iput-object p3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    .line 424
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    .line 425
    iput-boolean p5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    .line 426
    iput-boolean p4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->k:Z

    .line 428
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    .line 429
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 431
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 432
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 433
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    .line 438
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d()V

    .line 439
    return-void
.end method

.method public a(Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;)V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_b

    .line 214
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->g:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    .line 215
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 217
    :cond_b
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b:Z

    .line 76
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b:Z

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 396
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method b(FF)V
    .registers 10

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 315
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 318
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 319
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 320
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 318
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 322
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    .line 323
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 324
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 326
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 327
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 329
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->c:Z

    .line 81
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 413
    return-void
.end method

.method c(FF)V
    .registers 11

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    if-eqz v0, :cond_11

    .line 336
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_d7

    .line 337
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    div-float p2, p1, v0

    .line 346
    :cond_11
    :goto_11
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 347
    cmpl-float v0, p1, v6

    if-lez v0, :cond_10f

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v7, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10f

    .line 348
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float p1, v0, v7

    .line 350
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    if-eqz v0, :cond_10f

    .line 351
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    div-float p2, p1, v0

    move v0, p2

    move v1, p1

    .line 354
    :goto_44
    cmpl-float v4, v0, v6

    if-lez v4, :cond_6c

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6c

    .line 355
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 357
    iget-boolean v4, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    if-eqz v4, :cond_6c

    .line 358
    iget v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    mul-float/2addr v1, v0

    .line 362
    :cond_6c
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 366
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_84

    .line 367
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 369
    :cond_84
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->i:Z

    if-eqz v0, :cond_e1

    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    div-float v0, v2, v0

    .line 372
    :goto_8c
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9e

    .line 373
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 377
    :cond_9e
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e3

    .line 378
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 382
    :cond_b2
    :goto_b2
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f9

    .line 383
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 388
    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 389
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->d:Landroid/graphics/Rect;

    .line 390
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 391
    return-void

    .line 338
    :cond_d7
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_11

    .line 339
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->j:F

    mul-float p1, p2, v0

    goto/16 :goto_11

    :cond_e1
    move v0, v2

    .line 369
    goto :goto_8c

    .line 379
    :cond_e3
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b2

    .line 380
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b2

    .line 384
    :cond_f9
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c6

    .line 385
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c6

    :cond_10f
    move v0, p2

    move v1, p1

    goto/16 :goto_44
.end method
