.class public final Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/16 v0, 0xe

    if-lt p1, v0, :cond_17

    .line 274
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    .line 280
    :goto_e
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    .line 281
    return-void

    .line 275
    :cond_17
    const/16 v0, 0x9

    if-lt p1, v0, :cond_23

    .line 276
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;

    invoke-direct {v0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_e

    .line 278
    :cond_23
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
    .registers 4

    .prologue
    .line 265
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ScrollerCompat;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .registers 11

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;IIII)V

    .line 363
    return-void
.end method

.method public a(IIIII)V
    .registers 13

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;IIIII)V

    .line 380
    return-void
.end method

.method public a(IIIIIIII)V
    .registers 19

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;IIIIIIII)V

    .line 404
    return-void
.end method

.method public a(IIIIIIIIII)V
    .registers 23

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;IIIIIIIIII)V

    .line 433
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(IIIIII)Z
    .registers 15

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()F
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->b:Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/ScrollerCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;->f(Ljava/lang/Object;)V

    .line 457
    return-void
.end method
