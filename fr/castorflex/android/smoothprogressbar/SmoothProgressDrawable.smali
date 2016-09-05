.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private A:[I

.field private B:[F

.field private final C:Ljava/lang/Runnable;

.field private final a:Landroid/graphics/Rect;

.field private b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Paint;

.field private f:[I

.field private g:I

.field private h:Z

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:F

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Z


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V
    .registers 18

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    .line 560
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;

    invoke-direct {v1, p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;-><init>(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->C:Ljava/lang/Runnable;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->h:Z

    .line 83
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 84
    iput p2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    .line 86
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    .line 87
    iput p3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->k:I

    .line 88
    iput p6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->m:F

    .line 89
    iput p7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->n:F

    .line 90
    iput p8, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->o:F

    .line 91
    iput-boolean p9, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    .line 92
    iput-object p4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 94
    iput-boolean p10, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->t:Z

    .line 96
    move-object/from16 v0, p13

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->y:Landroid/graphics/drawable/Drawable;

    .line 97
    iput p5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->s:F

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iput-boolean p12, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->u:Z

    .line 108
    iput-object p11, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 110
    move/from16 v0, p14

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->z:Z

    .line 111
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a()V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;)V
    .registers 16

    .prologue
    .line 27
    invoke-direct/range {p0 .. p14}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->j:F

    return v0
.end method

.method static synthetic a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->j:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    int-to-float v0, v0

    div-float v3, v5, v0

    .line 262
    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 264
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    const/4 v4, 0x0

    aput v4, v0, v1

    .line 265
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    iget-object v4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v5, v0, v4

    .line 266
    add-int/lit8 v0, v2, -0x1

    .line 267
    if-gez v0, :cond_22

    iget-object v4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    array-length v4, v4

    add-int/2addr v0, v4

    .line 269
    :cond_22
    iget-object v4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    aget v0, v5, v0

    aput v0, v4, v1

    move v0, v1

    move v1, v2

    .line 271
    :goto_2c
    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    if-ge v0, v2, :cond_54

    .line 273
    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    int-to-float v4, v0

    mul-float/2addr v4, v3

    iget v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    add-float/2addr v4, v5

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 274
    iget-object v4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    add-int/lit8 v5, v0, 0x1

    aput v2, v4, v5

    .line 275
    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    aget v5, v5, v1

    aput v5, v2, v4

    .line 277
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 279
    :cond_54
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    aget v1, v3, v1

    aput v1, v0, v2

    .line 281
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v0, :cond_b7

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_78
    int-to-float v1, v0

    .line 282
    :goto_79
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_cd

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_85
    int-to-float v3, v0

    .line 284
    :goto_86
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    .line 285
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    .line 286
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    iget-boolean v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v7, :cond_d3

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :goto_a9
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 290
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 291
    return-void

    .line 281
    :cond_b2
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_78

    :cond_b7
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    goto :goto_79

    .line 282
    :cond_bd
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_85

    :cond_cd
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    goto :goto_86

    .line 286
    :cond_d3
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_a9
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .registers 12

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 374
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 442
    :cond_b
    :goto_b
    return-void

    .line 376
    :cond_c
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 377
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 379
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 380
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_39
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 381
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->y:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 384
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_84

    .line 385
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_79

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 389
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 390
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 380
    :cond_74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    goto :goto_39

    .line 393
    :cond_79
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_b

    .line 398
    :cond_84
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 400
    :cond_90
    cmpl-float v0, p2, p3

    if-lez v0, :cond_143

    .line 406
    :goto_94
    cmpl-float v0, p3, v3

    if-lez v0, :cond_b9

    .line 407
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_11b

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v0, :cond_f3

    .line 411
    invoke-direct {p0, p1, v3, p3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 412
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 413
    invoke-direct {p0, p1, v3, p3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 419
    :goto_b6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    :cond_b9
    :goto_b9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_b

    .line 425
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v0, :cond_139

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 428
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v0, :cond_11f

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 430
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 437
    :goto_ee
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    .line 415
    :cond_f3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 416
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_b6

    .line 421
    :cond_11b
    invoke-direct {p0, p1, v3, p3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_b9

    .line 433
    :cond_11f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v3, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    .line 434
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v3, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_ee

    .line 439
    :cond_139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_b

    :cond_143
    move v7, p3

    move p3, p2

    move p2, v7

    goto/16 :goto_94
.end method

.method private a(Landroid/graphics/Canvas;IFFFFI)V
    .registers 14

    .prologue
    .line 358
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-nez v0, :cond_18

    .line 361
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    :goto_17
    return-void

    .line 363
    :cond_18
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v0, :cond_39

    .line 364
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_17

    .line 367
    :cond_39
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v1, v0, p3

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_17
.end method

.method static synthetic a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;Z)Z
    .registers 2

    .prologue
    .line 27
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->q:Z

    return p1
.end method

.method static synthetic b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->o:F

    return v0
.end method

.method static synthetic b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 22

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-eqz v2, :cond_1e

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 299
    :cond_1e
    const/4 v6, 0x0

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 301
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-eqz v2, :cond_2f

    div-int/lit8 v4, v4, 0x2

    .line 302
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->k:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    add-int v15, v2, v3

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 304
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 308
    const/4 v2, 0x0

    .line 309
    const/4 v5, 0x0

    .line 317
    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 319
    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    if-ne v3, v7, :cond_6a

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    if-ne v3, v7, :cond_6a

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 323
    :cond_6a
    const/4 v3, 0x0

    move v10, v3

    move v11, v5

    move v12, v2

    move v13, v6

    :goto_6f
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    if-gt v10, v2, :cond_127

    .line 324
    int-to-float v2, v10

    mul-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    add-float/2addr v2, v3

    .line 325
    const/4 v3, 0x0

    sub-float v5, v2, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 327
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v5, v2

    .line 326
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 328
    int-to-float v5, v15

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v18, v0

    .line 330
    add-float v2, v18, v3

    int-to-float v3, v15

    cmpg-float v2, v2, v3

    if-gez v2, :cond_122

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->k:I

    int-to-float v2, v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v14, v2

    .line 335
    :goto_b9
    cmpl-float v2, v18, v14

    if-lez v2, :cond_125

    sub-float v2, v18, v14

    .line 336
    :goto_bf
    add-float v19, v13, v2

    .line 337
    cmpl-float v2, v19, v13

    if-lez v2, :cond_131

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    if-lt v10, v2, :cond_131

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->j:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 339
    int-to-float v3, v15

    mul-float/2addr v2, v3

    int-to-float v3, v4

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 340
    int-to-float v2, v4

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 341
    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Landroid/graphics/Canvas;IFFFFI)V

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    if-ne v10, v2, :cond_131

    .line 343
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->k:I

    int-to-float v2, v2

    sub-float v12, v5, v2

    move v5, v12

    .line 346
    :goto_10a
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    if-ne v10, v2, :cond_12f

    .line 347
    add-float v3, v13, v18

    .line 350
    :goto_112
    add-float v6, v19, v14

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d(I)I

    move-result v9

    .line 323
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    move v12, v5

    move v13, v6

    goto/16 :goto_6f

    .line 333
    :cond_122
    const/4 v2, 0x0

    move v14, v2

    goto :goto_b9

    .line 335
    :cond_125
    const/4 v2, 0x0

    goto :goto_bf

    .line 354
    :cond_127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Landroid/graphics/Canvas;FF)V

    .line 355
    return-void

    :cond_12f
    move v3, v11

    goto :goto_112

    :cond_131
    move v5, v12

    goto :goto_10a
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .registers 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->x:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    .line 446
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 448
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 450
    return-void
.end method

.method static synthetic c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    return v0
.end method

.method static synthetic d(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->n:F

    return v0
.end method

.method private d(I)I
    .registers 4

    .prologue
    .line 453
    add-int/lit8 v0, p1, 0x1

    .line 454
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    .line 455
    :cond_8
    return v0
.end method

.method static synthetic e(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->m:F

    return v0
.end method

.method private e(I)I
    .registers 3

    .prologue
    .line 459
    add-int/lit8 v0, p1, -0x1

    .line 460
    if-gez v0, :cond_9

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 461
    :cond_9
    return v0
.end method

.method static synthetic f(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->s:F

    return v0
.end method

.method private f(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g(I)V

    .line 485
    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    .line 486
    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->t:Z

    .line 487
    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->j:F

    .line 488
    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    .line 489
    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    .line 490
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 491
    return-void
.end method

.method static synthetic g(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g(I)V
    .registers 7

    .prologue
    .line 599
    if-ltz p1, :cond_7

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1e

    .line 600
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Index %d not valid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1e
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->z:Z

    if-eqz v0, :cond_16

    .line 219
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    .line 220
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    .line 226
    :goto_15
    return-void

    .line 222
    :cond_16
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 223
    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->A:[I

    .line 224
    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->B:[F

    goto :goto_15
.end method

.method public a(F)V
    .registers 4

    .prologue
    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_e
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->m:F

    .line 138
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 139
    return-void
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a([I)V

    .line 133
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 117
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_b
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 119
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 120
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 176
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    if-ne v0, p1, :cond_5

    .line 179
    :goto_4
    return-void

    .line 177
    :cond_5
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->p:Z

    .line 178
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_4
.end method

.method public a([I)V
    .registers 4

    .prologue
    .line 123
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_e

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 126
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f:[I

    .line 127
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a()V

    .line 128
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 129
    return-void
.end method

.method public b(F)V
    .registers 4

    .prologue
    .line 142
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SpeedProgressiveStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_e
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->n:F

    .line 144
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 145
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 154
    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_b
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->s:F

    .line 157
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->s:F

    rem-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->i:F

    .line 158
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a()V

    .line 159
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 160
    return-void
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 182
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    if-ne v0, p1, :cond_5

    .line 185
    :goto_4
    return-void

    .line 183
    :cond_5
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->r:Z

    .line 184
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_4
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 553
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(F)V
    .registers 4

    .prologue
    .line 148
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SpeedProgressiveStop must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_e
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->o:F

    .line 150
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 151
    return-void
.end method

.method public c(I)V
    .registers 4

    .prologue
    .line 163
    if-gez p1, :cond_b

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_b
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->k:I

    .line 166
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 167
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 206
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->u:Z

    .line 207
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->t:Z

    return v0
.end method

.method public d(F)V
    .registers 4

    .prologue
    .line 170
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_e
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 173
    return-void
.end method

.method public d(Z)V
    .registers 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->z:Z

    if-ne v0, p1, :cond_5

    .line 215
    :goto_4
    return-void

    .line 212
    :cond_5
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->z:Z

    .line 213
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a()V

    .line 214
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_4
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    .line 234
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 237
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->q:Z

    if-eqz v0, :cond_3c

    .line 238
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    invoke-direct {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e(I)I

    move-result v0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->q:Z

    .line 241
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 242
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    .line 244
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->v:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    if-le v0, v1, :cond_30

    .line 245
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->stop()V

    .line 258
    :goto_2f
    return-void

    .line 249
    :cond_30
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->l:I

    if-ge v0, v1, :cond_3c

    .line 250
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->w:I

    .line 254
    :cond_3c
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->z:Z

    if-eqz v0, :cond_43

    .line 255
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 257
    :cond_43
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Landroid/graphics/Canvas;)V

    goto :goto_2f
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 513
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->h:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->h:Z

    .line 544
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 545
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 509
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 520
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->u:Z

    if-eqz v0, :cond_8

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f(I)V

    .line 523
    :cond_8
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 529
    :goto_e
    return-void

    .line 524
    :cond_f
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_18

    .line 525
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;->b()V

    .line 527
    :cond_18
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->C:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 528
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_e
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 539
    :goto_6
    return-void

    .line 534
    :cond_7
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_10

    .line 535
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;->a()V

    .line 537
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->h:Z

    .line 538
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
