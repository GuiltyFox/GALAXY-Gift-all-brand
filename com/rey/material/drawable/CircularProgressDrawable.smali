.class public Lcom/rey/material/drawable/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private final D:Ljava/lang/Runnable;

.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:[I

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:[I

.field private z:I


# direct methods
.method private constructor <init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[II)V
    .registers 23

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 461
    new-instance v1, Lcom/rey/material/drawable/CircularProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/rey/material/drawable/CircularProgressDrawable$1;-><init>(Lcom/rey/material/drawable/CircularProgressDrawable;)V

    iput-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    .line 74
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    .line 75
    iput p2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->l:F

    .line 76
    invoke-virtual {p0, p3}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(F)V

    .line 77
    invoke-virtual {p0, p4}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(F)V

    .line 78
    iput p5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    .line 79
    iput p6, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    .line 80
    iput p7, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    .line 81
    iput-object p8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    .line 82
    iput p9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->s:I

    .line 83
    iput-boolean p10, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    .line 84
    iput p11, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->u:I

    .line 85
    iput p12, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    .line 86
    move/from16 v0, p13

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->w:I

    .line 87
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->C:Landroid/view/animation/Interpolator;

    .line 88
    move/from16 v0, p15

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    .line 89
    move/from16 v0, p16

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    .line 90
    move/from16 v0, p17

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->x:F

    .line 91
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    .line 92
    move/from16 v0, p19

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    .line 95
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[IILcom/rey/material/drawable/CircularProgressDrawable$1;)V
    .registers 21

    .prologue
    .line 25
    invoke-direct/range {p0 .. p19}, Lcom/rey/material/drawable/CircularProgressDrawable;-><init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[II)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 193
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x0

    .line 196
    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7d

    .line 197
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v0, v0

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    int-to-long v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 198
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_42

    .line 199
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 211
    :cond_42
    :goto_42
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7c

    .line 212
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 213
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 215
    iget-object v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_de

    .line 219
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    :cond_7c
    :goto_7c
    return-void

    .line 201
    :cond_7d
    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_bd

    .line 202
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v0, v0

    const-wide/16 v4, 0x0

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-long v6, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 203
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_42

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    goto :goto_42

    .line 206
    :cond_bd
    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    if-eqz v3, :cond_42

    .line 207
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v0, v0

    .line 208
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    goto/16 :goto_42

    .line 222
    :cond_de
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_f2

    .line 223
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->s:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7c

    .line 227
    :cond_f2
    iget-boolean v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v0, :cond_13d

    const/16 v0, -0x168

    :goto_f8
    int-to-float v0, v0

    iget v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    mul-float v6, v0, v4

    .line 229
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    sub-float v4, v3, v1

    sub-float v5, v2, v1

    add-float/2addr v3, v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float v2, v0, v6

    iget-boolean v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v0, :cond_140

    const/16 v0, -0x168

    :goto_11b
    int-to-float v0, v0

    sub-float v3, v0, v6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 233
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_7c

    .line 227
    :cond_13d
    const/16 v0, 0x168

    goto :goto_f8

    .line 231
    :cond_140
    const/16 v0, 0x168

    goto :goto_11b
.end method

.method static synthetic a(Lcom/rey/material/drawable/CircularProgressDrawable;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->f()V

    return-void
.end method

.method private a(Z)V
    .registers 8

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    :goto_6
    return-void

    .line 418
    :cond_7
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->e()V

    .line 420
    if-eqz p1, :cond_18

    .line 421
    const/4 v0, 0x1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 426
    :cond_18
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 427
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 250
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_112

    .line 251
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 252
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 253
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    .line 256
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->x:F

    iget-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 258
    div-float v7, v6, v0

    .line 260
    const/4 v1, 0x0

    .line 263
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v0, v8

    :goto_58
    if-ltz v0, :cond_be

    .line 265
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v8, v0

    sub-float v8, v7, v8

    iget v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->x:F

    mul-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v2, v5

    .line 267
    iget-object v8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    array-length v8, v8

    if-lt v0, v8, :cond_70

    .line 263
    :goto_6c
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_58

    .line 270
    :cond_70
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_8b

    .line 271
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    aget v8, v8, v0

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6c

    .line 275
    :cond_8b
    cmpl-float v8, v2, v1

    if-lez v8, :cond_be

    .line 276
    add-float v8, v1, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 277
    iget-object v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    sub-float v10, v3, v8

    sub-float v11, v4, v8

    add-float v12, v3, v8

    add-float v13, v4, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sub-float v1, v2, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    aget v9, v9, v0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6c

    .line 289
    :cond_be
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d9

    .line 290
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->x:F

    div-float/2addr v0, v1

    cmpl-float v0, v7, v0

    if-gez v0, :cond_d2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_d8

    .line 291
    :cond_d2
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->e()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 336
    :cond_d8
    :goto_d8
    return-void

    .line 296
    :cond_d9
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, v5, v0

    .line 298
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    sub-float v2, v3, v0

    sub-float v5, v4, v0

    add-float/2addr v3, v0

    add-float/2addr v0, v4

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_d8

    .line 306
    :cond_112
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_196

    .line 307
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v0, v0

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-long v4, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 309
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d8

    .line 310
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 312
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 313
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 315
    iget-object v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    sub-float v5, v3, v2

    sub-float v6, v1, v2

    add-float/2addr v3, v2

    add-float/2addr v1, v2

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_d8

    .line 323
    :cond_196
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    if-eqz v0, :cond_d8

    .line 324
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 326
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 327
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 329
    iget-object v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    sub-float v4, v2, v1

    sub-float v5, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_d8
.end method

.method private b(Z)V
    .registers 8

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 447
    :goto_6
    return-void

    .line 434
    :cond_7
    if-eqz p1, :cond_27

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    .line 436
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 437
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 438
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 440
    :cond_23
    const/4 v0, 0x4

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    goto :goto_6

    .line 443
    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 444
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method private d()I
    .registers 7

    .prologue
    .line 240
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    aget v0, v0, v1

    .line 246
    :goto_11
    return v0

    .line 243
    :cond_12
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->w:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 244
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 246
    :goto_32
    iget-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    aget v0, v2, v0

    iget-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    iget v3, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    aget v2, v2, v3

    invoke-static {v0, v2, v1}, Lcom/rey/material/util/ColorUtil;->a(IIF)I

    move-result v0

    goto :goto_11

    .line 244
    :cond_41
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_32
.end method

.method private e()V
    .registers 3

    .prologue
    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    .line 398
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    iput-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    .line 399
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->l:F

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    .line 401
    iget-boolean v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    neg-float v0, v0

    :goto_18
    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 402
    return-void

    .line 401
    :cond_1b
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    goto :goto_18
.end method

.method private f()V
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    packed-switch v0, :pswitch_data_e

    .line 479
    :goto_5
    return-void

    .line 473
    :pswitch_6
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->g()V

    goto :goto_5

    .line 476
    :pswitch_a
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->h()V

    goto :goto_5

    .line 471
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method private g()V
    .registers 7

    .prologue
    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 483
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 484
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_15

    .line 485
    neg-float v0, v0

    .line 486
    :cond_15
    iput-wide v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    .line 488
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 490
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 491
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long v0, v2, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 492
    const/4 v0, 0x3

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 502
    :cond_2f
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 503
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 505
    :cond_41
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 506
    :goto_44
    return-void

    .line 495
    :cond_45
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2f

    .line 496
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long v0, v2, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(Z)V

    goto :goto_44
.end method

.method private h()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 511
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    sub-long v0, v4, v0

    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 512
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_1a

    .line 513
    neg-float v0, v0

    .line 514
    :cond_1a
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->a:J

    .line 516
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    packed-switch v1, :pswitch_data_158

    .line 582
    :cond_21
    :goto_21
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    if-ne v0, v10, :cond_142

    .line 583
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3c

    .line 584
    iput v11, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 585
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3c

    .line 586
    invoke-direct {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->e()V

    .line 587
    iput v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 598
    :cond_3c
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 599
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->D:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 601
    :cond_4e
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 602
    :goto_51
    return-void

    .line 518
    :pswitch_52
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    if-gtz v1, :cond_6c

    .line 519
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_69

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    neg-float v1, v1

    :goto_5d
    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 520
    iput v10, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 521
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 522
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    goto :goto_21

    .line 519
    :cond_69
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    goto :goto_5d

    .line 525
    :cond_6c
    iget-wide v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 526
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_a0

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    neg-float v1, v1

    .line 527
    :goto_7d
    iget-boolean v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v2, :cond_a3

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    neg-float v2, v2

    .line 529
    :goto_84
    iget v6, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 530
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v6, v1, v2

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 532
    cmpl-float v0, v3, v8

    if-lez v0, :cond_21

    .line 533
    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 534
    iput v10, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 535
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    goto :goto_21

    .line 526
    :cond_a0
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    goto :goto_7d

    .line 527
    :cond_a3
    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    goto :goto_84

    .line 540
    :pswitch_a6
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 542
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->w:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 543
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 544
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    goto/16 :goto_21

    .line 548
    :pswitch_bd
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    if-gtz v1, :cond_e2

    .line 549
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_df

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    neg-float v1, v1

    :goto_c8
    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 550
    iput v11, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 551
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 552
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    .line 553
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    goto/16 :goto_21

    .line 549
    :cond_df
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    goto :goto_c8

    .line 556
    :cond_e2
    iget-wide v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 557
    iget-boolean v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v1, :cond_126

    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    neg-float v1, v1

    .line 558
    :goto_f3
    iget-boolean v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    if-eqz v2, :cond_129

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    neg-float v2, v2

    .line 560
    :goto_fa
    iget-object v6, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v8, v6

    sub-float/2addr v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v2

    .line 561
    iget v6, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    iget v7, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    add-float/2addr v0, v7

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 562
    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 564
    cmpl-float v0, v3, v8

    if-lez v0, :cond_21

    .line 565
    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->i:F

    .line 566
    iput v11, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 567
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    .line 568
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    goto/16 :goto_21

    .line 557
    :cond_126
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    goto :goto_f3

    .line 558
    :cond_129
    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    goto :goto_fa

    .line 573
    :pswitch_12c
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->h:F

    .line 575
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->w:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 576
    iput v9, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->d:I

    .line 577
    iput-wide v4, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->b:J

    goto/16 :goto_21

    .line 591
    :cond_142
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    .line 592
    iget-wide v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->c:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3c

    .line 593
    invoke-direct {p0, v9}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(Z)V

    goto/16 :goto_51

    .line 516
    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_52
        :pswitch_a6
        :pswitch_bd
        :pswitch_12c
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    return v0
.end method

.method public a(F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 373
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 374
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1c

    .line 375
    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    .line 376
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 377
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 381
    :cond_1c
    :goto_1c
    return-void

    .line 378
    :cond_1d
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 379
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->start()V

    goto :goto_1c
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 358
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    if-eq v0, p1, :cond_9

    .line 359
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    .line 360
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 362
    :cond_9
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 103
    sget-object v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 107
    const/4 v0, 0x0

    .line 109
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    move v6, v1

    move v3, v1

    move v5, v1

    :goto_11
    if-ge v6, v8, :cond_176

    .line 110
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 112
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_padding:I

    if-ne v2, v9, :cond_29

    .line 113
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->k:I

    move v2, v3

    move v3, v5

    .line 109
    :goto_23
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v2

    goto :goto_11

    .line 114
    :cond_29
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_initialAngle:I

    if-ne v2, v9, :cond_37

    .line 115
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->l:F

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 116
    :cond_37
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_progress:I

    if-ne v2, v9, :cond_45

    .line 117
    invoke-virtual {v7, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(F)V

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 118
    :cond_45
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_secondaryProgress:I

    if-ne v2, v9, :cond_53

    .line 119
    invoke-virtual {v7, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(F)V

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 120
    :cond_53
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_maxSweepAngle:I

    if-ne v2, v9, :cond_61

    .line 121
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->o:F

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 122
    :cond_61
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_minSweepAngle:I

    if-ne v2, v9, :cond_6f

    .line 123
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->p:F

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 124
    :cond_6f
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeSize:I

    if-ne v2, v9, :cond_7c

    .line 125
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->q:I

    move v2, v3

    move v3, v5

    goto :goto_23

    .line 126
    :cond_7c
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeColor:I

    if-ne v2, v9, :cond_87

    .line 127
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move v3, v2

    move v2, v4

    .line 128
    goto :goto_23

    .line 130
    :cond_87
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeColors:I

    if-ne v2, v9, :cond_b5

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 132
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v2, v0, [I

    move v0, v1

    .line 133
    :goto_9e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_ad

    .line 134
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v2, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 135
    :cond_ad
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v2

    move v2, v3

    move v3, v5

    .line 136
    goto/16 :goto_23

    .line 137
    :cond_b5
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeSecondaryColor:I

    if-ne v2, v9, :cond_c3

    .line 138
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->s:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 139
    :cond_c3
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_reverse:I

    if-ne v2, v9, :cond_d1

    .line 140
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->t:Z

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 141
    :cond_d1
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_rotateDuration:I

    if-ne v2, v9, :cond_df

    .line 142
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->u:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 143
    :cond_df
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_transformDuration:I

    if-ne v2, v9, :cond_ed

    .line 144
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->v:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 145
    :cond_ed
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_keepDuration:I

    if-ne v2, v9, :cond_fb

    .line 146
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->w:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 147
    :cond_fb
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_transformInterpolator:I

    if-ne v2, v9, :cond_10d

    .line 148
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->C:Landroid/view/animation/Interpolator;

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 149
    :cond_10d
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_progressMode:I

    if-ne v2, v9, :cond_11b

    .line 150
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 151
    :cond_11b
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inAnimDuration:I

    if-ne v2, v9, :cond_129

    .line 152
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 153
    :cond_129
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inStepColors:I

    if-ne v2, v9, :cond_15a

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 155
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    move v2, v1

    .line 156
    :goto_142
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_153

    .line 157
    iget-object v10, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->y:[I

    invoke-virtual {v9, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    aput v11, v10, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_142

    .line 158
    :cond_153
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v3

    move v3, v5

    .line 159
    goto/16 :goto_23

    .line 160
    :cond_15a
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inStepPercent:I

    if-ne v2, v9, :cond_168

    .line 161
    invoke-virtual {v7, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->x:F

    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 162
    :cond_168
    sget v9, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_outAnimDuration:I

    if-ne v2, v9, :cond_172

    .line 163
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    :cond_172
    move v2, v3

    move v3, v5

    goto/16 :goto_23

    .line 166
    :cond_176
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    if-eqz v0, :cond_18a

    .line 169
    iput-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    .line 173
    :cond_17d
    :goto_17d
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    iget-object v2, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    array-length v2, v2

    if-lt v0, v2, :cond_186

    .line 174
    iput v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->j:I

    .line 176
    :cond_186
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 177
    return-void

    .line 170
    :cond_18a
    if-eqz v3, :cond_17d

    .line 171
    new-array v0, v4, [I

    aput v5, v0, v1

    iput-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->r:[I

    goto :goto_17d
.end method

.method public b()F
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->m:F

    return v0
.end method

.method public b(F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 384
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 385
    iget v1, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->n:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1c

    .line 386
    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->n:F

    .line 387
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 388
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->invalidateSelf()V

    .line 392
    :cond_1c
    :goto_1c
    return-void

    .line 389
    :cond_1d
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->n:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 390
    invoke-virtual {p0}, Lcom/rey/material/drawable/CircularProgressDrawable;->start()V

    goto :goto_1c
.end method

.method public c()F
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->n:F

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->B:I

    packed-switch v0, :pswitch_data_e

    .line 189
    :goto_5
    return-void

    .line 183
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 186
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 181
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 350
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 456
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    if-nez v0, :cond_b

    .line 457
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    iput v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->e:I

    .line 458
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 459
    return-void

    .line 457
    :cond_f
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 346
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 406
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->z:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->a(Z)V

    .line 407
    return-void

    .line 406
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/rey/material/drawable/CircularProgressDrawable;->A:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable;->b(Z)V

    .line 412
    return-void

    .line 411
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
