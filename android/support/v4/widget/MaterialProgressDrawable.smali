.class Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:[I


# instance fields
.field b:F

.field c:Z

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private h:F

.field private i:Landroid/content/res/Resources;

.field private j:Landroid/view/View;

.field private k:Landroid/view/animation/Animation;

.field private l:D

.field private m:D

.field private final n:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Landroid/view/animation/Interpolator;

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Ljava/util/ArrayList;

    .line 449
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->n:Landroid/graphics/drawable/Drawable$Callback;

    .line 119
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/content/res/Resources;

    .line 122
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->n:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 123
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    sget-object v1, Landroid/support/v4/widget/MaterialProgressDrawable;->e:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a([I)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(I)V

    .line 126
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->a()V

    .line 127
    return-void
.end method

.method private a(FII)I
    .registers 12

    .prologue
    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 311
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 312
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 313
    and-int/lit16 v0, v0, 0xff

    .line 315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 316
    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 317
    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 318
    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 319
    and-int/lit16 v4, v4, 0xff

    .line 321
    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    sub-int v5, v6, v2

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int v2, v7, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sub-int v2, v4, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 363
    new-instance v1, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 415
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 416
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 417
    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 418
    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 446
    iput-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    .line 447
    return-void
.end method

.method private a(DDDDFF)V
    .registers 16

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 132
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 133
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 135
    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    .line 136
    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    .line 137
    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(F)V

    .line 138
    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(D)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(I)V

    .line 140
    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(FF)V

    .line 141
    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(II)V

    .line 142
    return-void
.end method


# virtual methods
.method a(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .registers 8

    .prologue
    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->d()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->j()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a(F)V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->e(F)V

    .line 173
    return-void
.end method

.method public a(FF)V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->b(F)V

    .line 183
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(F)V

    .line 184
    return-void
.end method

.method a(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 6

    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    .line 333
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1a

    .line 337
    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 338
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->h()I

    move-result v1

    .line 339
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a()I

    move-result v2

    .line 337
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->b(I)V

    .line 341
    :cond_1a
    return-void
.end method

.method public a(I)V
    .registers 16

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 152
    if-nez p1, :cond_14

    .line 153
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(DDDDFF)V

    .line 159
    :goto_13
    return-void

    .line 156
    :cond_14
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(DDDDFF)V

    goto :goto_13
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(Z)V

    .line 166
    return-void
.end method

.method public varargs a([I)V
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a([I)V

    .line 211
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(I)V

    .line 212
    return-void
.end method

.method public b(F)V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->d(F)V

    .line 193
    return-void
.end method

.method b(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 7

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 348
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->k()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 350
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v1

    .line 351
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->f()F

    move-result v2

    .line 352
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->g()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->f()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    .line 354
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->b(F)V

    .line 355
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->g()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(F)V

    .line 356
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->k()F

    move-result v1

    .line 357
    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->k()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 358
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->d(F)V

    .line 359
    return-void
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(I)V

    .line 200
    return-void
.end method

.method c(F)V
    .registers 2

    .prologue
    .line 249
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:F

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 228
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 229
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 231
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .prologue
    .line 216
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .prologue
    .line 221
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 260
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 267
    :goto_8
    if-ge v2, v4, :cond_22

    .line 268
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 269
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 270
    const/4 v0, 0x1

    .line 273
    :goto_1d
    return v0

    .line 267
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_22
    move v0, v1

    .line 273
    goto :goto_1d
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->d(I)V

    .line 236
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(Landroid/graphics/ColorFilter;)V

    .line 245
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->l()V

    .line 281
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->i()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:Z

    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    :goto_2b
    return-void

    .line 286
    :cond_2c
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(I)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->m()V

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2b
.end method

.method public stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->c(F)V

    .line 297
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->a(Z)V

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(I)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->m()V

    .line 300
    return-void
.end method
