.class public Lit/sephiroth/android/library/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# static fields
.field private static f:F

.field private static g:F


# instance fields
.field private a:I

.field private final b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

.field private final c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lit/sephiroth/android/library/widget/OverScroller;->f:F

    .line 52
    sput v1, Lit/sephiroth/android/library/widget/OverScroller;->g:F

    .line 53
    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lit/sephiroth/android/library/widget/OverScroller;->g:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lit/sephiroth/android/library/widget/OverScroller;->d:Landroid/view/animation/Interpolator;

    .line 99
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/OverScroller;->e:Z

    .line 100
    new-instance v0, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    .line 101
    new-instance v0, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    .line 102
    return-void
.end method

.method public static a(F)F
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 67
    sget v0, Lit/sephiroth/android/library/widget/OverScroller;->f:F

    mul-float/2addr v0, p0

    .line 68
    cmpg-float v1, v0, v4

    if-gez v1, :cond_17

    .line 69
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 75
    :goto_13
    sget v1, Lit/sephiroth/android/library/widget/OverScroller;->g:F

    mul-float/2addr v0, v1

    .line 76
    return v0

    .line 71
    :cond_17
    const v1, 0x3ebc5ab2

    .line 72
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 73
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_13
.end method


# virtual methods
.method public a(III)V
    .registers 5

    .prologue
    .line 490
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(III)V

    .line 491
    return-void
.end method

.method public a(IIIII)V
    .registers 7

    .prologue
    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->a:I

    .line 401
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(III)V

    .line 402
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(III)V

    .line 403
    return-void
.end method

.method public a(IIIIIIII)V
    .registers 20

    .prologue
    .line 428
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/widget/OverScroller;->a(IIIIIIIIII)V

    .line 429
    return-void
.end method

.method public a(IIIIIIIIII)V
    .registers 17

    .prologue
    .line 461
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->e:Z

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/OverScroller;->a()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 462
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    .line 463
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    .line 464
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4f

    int-to-float v2, p4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4f

    .line 466
    int-to-float v2, p3

    add-float/2addr v0, v2

    float-to-int p3, v0

    .line 467
    int-to-float v0, p4

    add-float/2addr v0, v1

    float-to-int p4, v0

    move v2, p3

    .line 471
    :goto_37
    const/4 v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->a:I

    .line 472
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(IIIII)V

    .line 473
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(IIIII)V

    .line 474
    return-void

    :cond_4f
    move v2, p3

    goto :goto_37
.end method

.method a(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lit/sephiroth/android/library/widget/OverScroller;->d:Landroid/view/animation/Interpolator;

    .line 141
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(FF)Z
    .registers 6

    .prologue
    .line 559
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->e(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->d(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 560
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->e(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->d(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 561
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/OverScroller;->a()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3c

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public a(IIIIII)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 418
    iput v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->a:I

    .line 421
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b(III)Z

    move-result v1

    .line 422
    iget-object v2, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b(III)Z

    move-result v2

    .line 423
    if-nez v1, :cond_13

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final b(F)V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(F)V

    .line 152
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(F)V

    .line 153
    return-void
.end method

.method public c()F
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 202
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 203
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 7

    .prologue
    .line 317
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/OverScroller;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    const/4 v0, 0x0

    .line 365
    :goto_7
    return v0

    .line 321
    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->a:I

    packed-switch v0, :pswitch_data_82

    .line 365
    :cond_d
    :goto_d
    const/4 v0, 0x1

    goto :goto_7

    .line 323
    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 326
    iget-object v2, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->g(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 328
    iget-object v2, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->f(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    .line 329
    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_42

    .line 330
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 332
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3b

    .line 333
    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller;->a(F)F

    move-result v0

    .line 338
    :goto_30
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b(F)V

    .line 339
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b(F)V

    goto :goto_d

    .line 335
    :cond_3b
    iget-object v1, p0, Lit/sephiroth/android/library/widget/OverScroller;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_30

    .line 341
    :cond_42
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/OverScroller;->e()V

    goto :goto_d

    .line 346
    :pswitch_46
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 347
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c()Z

    move-result v0

    if-nez v0, :cond_63

    .line 348
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b()Z

    move-result v0

    if-nez v0, :cond_63

    .line 349
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a()V

    .line 354
    :cond_63
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a(Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 355
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 356
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 357
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a()V

    goto :goto_d

    .line 321
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_f
        :pswitch_46
    .end packed-switch
.end method

.method public e()V
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->b:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a()V

    .line 539
    iget-object v0, p0, Lit/sephiroth/android/library/widget/OverScroller;->c:Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller$SplineOverScroller;->a()V

    .line 540
    return-void
.end method
