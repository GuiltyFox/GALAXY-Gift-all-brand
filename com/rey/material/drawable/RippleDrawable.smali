.class public Lcom/rey/material/drawable/RippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final A:[F


# instance fields
.field private final B:Ljava/lang/Runnable;

.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/rey/material/drawable/RippleDrawable$Mask;

.field private e:Landroid/graphics/RadialGradient;

.field private f:Landroid/graphics/RadialGradient;

.field private g:Landroid/graphics/Matrix;

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Path;

.field private l:I

.field private m:I

.field private n:F

.field private o:Landroid/graphics/PointF;

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:I

.field private w:Landroid/view/animation/Interpolator;

.field private x:Landroid/view/animation/Interpolator;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/rey/material/drawable/RippleDrawable;->A:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V
    .registers 31

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rey/material/drawable/RippleDrawable;->a:Z

    .line 46
    const/16 v1, 0xff

    iput v1, p0, Lcom/rey/material/drawable/RippleDrawable;->h:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    .line 378
    new-instance v1, Lcom/rey/material/drawable/RippleDrawable$1;

    invoke-direct {v1, p0}, Lcom/rey/material/drawable/RippleDrawable$1;-><init>(Lcom/rey/material/drawable/RippleDrawable;)V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->B:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p0, p1}, Lcom/rey/material/drawable/RippleDrawable;->a(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iput p2, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    .line 91
    iput p3, p0, Lcom/rey/material/drawable/RippleDrawable;->m:I

    .line 93
    iput p4, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    .line 94
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->a(I)V

    .line 95
    move/from16 v0, p6

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    .line 96
    move/from16 v0, p7

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    .line 97
    move/from16 v0, p8

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    .line 99
    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-nez v1, :cond_39

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    if-gtz v1, :cond_39

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    .line 102
    :cond_39
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->w:Landroid/view/animation/Interpolator;

    .line 103
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->x:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    move/from16 v9, p18

    move/from16 v10, p19

    .line 105
    invoke-virtual/range {v1 .. v10}, Lcom/rey/material/drawable/RippleDrawable;->a(IIIIIIIII)V

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    .line 108
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    .line 111
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    .line 116
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    .line 118
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    .line 120
    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    sget-object v6, Lcom/rey/material/drawable/RippleDrawable;->A:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->e:Landroid/graphics/RadialGradient;

    .line 121
    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_db

    .line 122
    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/rey/material/util/ColorUtil;->a(IF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    aput v7, v5, v6

    sget-object v6, Lcom/rey/material/drawable/RippleDrawable;->A:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->f:Landroid/graphics/RadialGradient;

    .line 123
    :cond_db
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILcom/rey/material/drawable/RippleDrawable$1;)V
    .registers 21

    .prologue
    .line 36
    invoke-direct/range {p0 .. p19}, Lcom/rey/material/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V

    return-void
.end method

.method private a(FF)I
    .registers 9

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 298
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 299
    :goto_10
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3b

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 301
    :goto_1e
    sub-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v0, v1, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 298
    :cond_36
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_10

    .line 299
    :cond_3b
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1e
.end method

.method static synthetic a(Lcom/rey/material/drawable/RippleDrawable;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_51

    .line 264
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->n:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_28

    .line 265
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->n:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    :cond_28
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_51

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->u:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_51

    .line 271
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->u:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->e:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 273
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 276
    :cond_51
    return-void
.end method

.method private a(FFF)Z
    .registers 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_16

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_45

    .line 201
    :cond_16
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 202
    iput p3, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    .line 203
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    .line 204
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 207
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->e:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->f:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_43

    .line 209
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->f:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 211
    :cond_43
    const/4 v0, 0x1

    .line 214
    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private b(I)V
    .registers 4

    .prologue
    .line 183
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eq v0, p1, :cond_b

    .line 185
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 197
    :cond_b
    :goto_b
    return-void

    .line 190
    :cond_c
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    .line 192
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 193
    :cond_17
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->stop()V

    goto :goto_b

    .line 195
    :cond_1b
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->start()V

    goto :goto_b
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 279
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_1e

    .line 280
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 281
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1f

    .line 282
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 295
    :cond_1e
    :goto_1e
    return-void

    .line 286
    :cond_1f
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->f:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1e

    .line 290
    :cond_2e
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1e

    .line 291
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->e:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 292
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1e
.end method

.method static synthetic b(Lcom/rey/material/drawable/RippleDrawable;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rey/material/drawable/RippleDrawable;->e()V

    return-void
.end method

.method static synthetic c(Lcom/rey/material/drawable/RippleDrawable;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/rey/material/drawable/RippleDrawable;->f()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    .line 348
    return-void
.end method

.method private e()V
    .registers 9

    .prologue
    const/4 v0, 0x4

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 396
    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eq v1, v0, :cond_84

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 398
    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/rey/material/drawable/RippleDrawable;->m:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    iput v2, p0, Lcom/rey/material/drawable/RippleDrawable;->n:F

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 401
    iget-object v3, p0, Lcom/rey/material/drawable/RippleDrawable;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iput v3, p0, Lcom/rey/material/drawable/RippleDrawable;->u:F

    .line 403
    iget-object v3, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/rey/material/drawable/RippleDrawable;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 405
    cmpl-float v1, v1, v7

    if-nez v1, :cond_6e

    cmpl-float v1, v2, v7

    if-nez v1, :cond_6e

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    .line 407
    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6b

    const/4 v0, 0x2

    :cond_6b
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    .line 423
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 424
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 426
    :cond_80
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->invalidateSelf()V

    .line 427
    return-void

    .line 411
    :cond_84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v7, v1

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->m:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/rey/material/drawable/RippleDrawable;->n:F

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 415
    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v7, v2

    iput v2, p0, Lcom/rey/material/drawable/RippleDrawable;->u:F

    .line 417
    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, p0, Lcom/rey/material/drawable/RippleDrawable;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    mul-float/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 419
    cmpl-float v0, v0, v7

    if-nez v0, :cond_6e

    cmpl-float v0, v1, v7

    if-nez v0, :cond_6e

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_6e
.end method

.method private f()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 432
    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eq v1, v6, :cond_65

    .line 433
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rey/material/drawable/RippleDrawable;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 435
    cmpl-float v0, v0, v5

    if-nez v0, :cond_3f

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    .line 437
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 438
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    .line 452
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 453
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 455
    :cond_51
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->invalidateSelf()V

    .line 456
    return-void

    .line 440
    :cond_55
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 441
    invoke-direct {p0, v6}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_3f

    .line 446
    :cond_65
    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rey/material/drawable/RippleDrawable;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 448
    cmpl-float v0, v0, v5

    if-nez v0, :cond_3f

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_3f
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 140
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable;->v:I

    .line 141
    return-void
.end method

.method public a(IIIIIIIII)V
    .registers 20

    .prologue
    .line 144
    new-instance v0, Lcom/rey/material/drawable/RippleDrawable$Mask;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/rey/material/drawable/RippleDrawable$Mask;-><init>(IIIIIIIII)V

    iput-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    .line 145
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 126
    iput-object p1, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    :cond_f
    return-void
.end method

.method public b()J
    .registers 7

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x3

    .line 164
    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->v:I

    packed-switch v2, :pswitch_data_4e

    .line 179
    :cond_8
    :goto_8
    :pswitch_8
    return-wide v0

    .line 168
    :pswitch_9
    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-ne v2, v3, :cond_8

    .line 169
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 172
    :pswitch_1f
    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-ne v2, v3, :cond_37

    .line 173
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 174
    :cond_37
    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 175
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->l:I

    iget v1, p0, Lcom/rey/material/drawable/RippleDrawable;->s:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/RippleDrawable;->y:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_8

    .line 164
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_1f
    .end packed-switch
.end method

.method public c()V
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    .line 344
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_9
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    packed-switch v0, :pswitch_data_18

    .line 260
    :goto_e
    return-void

    .line 254
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/RippleDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 257
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/RippleDrawable;->b(Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 251
    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_f
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 160
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 3

    .prologue
    .line 369
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/rey/material/drawable/RippleDrawable;->a:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 8

    .prologue
    .line 219
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget v2, v2, Lcom/rey/material/drawable/RippleDrawable$Mask;->c:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget v3, v3, Lcom/rey/material/drawable/RippleDrawable$Mask;->d:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget v4, v4, Lcom/rey/material/drawable/RippleDrawable$Mask;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget v5, v5, Lcom/rey/material/drawable/RippleDrawable$Mask;->f:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 225
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Mask;->a:I

    packed-switch v0, :pswitch_data_54

    .line 233
    :goto_3a
    return-void

    .line 227
    :pswitch_3b
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_3a

    .line 230
    :pswitch_45
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/rey/material/drawable/RippleDrawable;->d:Lcom/rey/material/drawable/RippleDrawable$Mask;

    iget-object v2, v2, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_3a

    .line 225
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3b
    .end packed-switch
.end method

.method protected onStateChange([I)Z
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    .line 337
    :cond_b
    :goto_b
    return v3

    .line 311
    :pswitch_c
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-ne v0, v5, :cond_39

    .line 312
    :cond_14
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-eq v0, v3, :cond_1c

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-ne v0, v4, :cond_2a

    .line 313
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/rey/material/drawable/RippleDrawable;->a(FF)I

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable;->r:I

    .line 315
    :cond_2a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 316
    invoke-direct {p0, v3}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_b

    .line 318
    :cond_39
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-nez v0, :cond_b

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable;->p:F

    invoke-direct {p0, v0, v1, v2}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->invalidateSelf()V

    goto :goto_b

    .line 325
    :pswitch_51
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    if-eqz v0, :cond_b

    .line 326
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_71

    .line 327
    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-eq v0, v3, :cond_62

    iget v0, p0, Lcom/rey/material/drawable/RippleDrawable;->q:I

    if-ne v0, v4, :cond_6d

    .line 328
    :cond_62
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/rey/material/drawable/RippleDrawable;->o:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1, v2}, Lcom/rey/material/drawable/RippleDrawable;->a(FFF)Z

    .line 330
    :cond_6d
    invoke-direct {p0, v5}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_b

    .line 333
    :cond_71
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->b(I)V

    goto :goto_b

    .line 308
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_c
        :pswitch_51
        :pswitch_c
        :pswitch_51
    .end packed-switch
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/drawable/RippleDrawable;->a:Z

    .line 375
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 376
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 149
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable;->h:I

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 155
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 156
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 358
    :goto_6
    return-void

    .line 355
    :cond_7
    invoke-direct {p0}, Lcom/rey/material/drawable/RippleDrawable;->d()V

    .line 356
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 357
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/RippleDrawable;->a:Z

    .line 363
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/RippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 364
    invoke-virtual {p0}, Lcom/rey/material/drawable/RippleDrawable;->invalidateSelf()V

    .line 365
    return-void
.end method
