.class public Lit/sephiroth/android/library/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final a:I

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:F

.field private final w:Landroid/view/animation/Interpolator;

.field private x:I

.field private y:F

.field private final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->z:Landroid/graphics/Rect;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    sget v1, Lit/sephiroth/android/library/R$drawable;->hlv_overscroll_edge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    .line 142
    sget v1, Lit/sephiroth/android/library/R$drawable;->hlv_overscroll_glow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    .line 144
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->a:I

    .line 146
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->A:I

    .line 147
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    .line 148
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->C:I

    .line 150
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->C:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->D:I

    .line 154
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->h:I

    .line 155
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->w:Landroid/view/animation/Interpolator;

    .line 156
    return-void
.end method

.method private d()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 383
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 384
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    div-float/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 386
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 388
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    .line 389
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    .line 390
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    .line 391
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    .line 393
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_53

    .line 394
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    packed-switch v0, :pswitch_data_c0

    .line 443
    :cond_53
    :goto_53
    return-void

    .line 396
    :pswitch_54
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 397
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    .line 398
    iput v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    .line 400
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    .line 401
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    .line 402
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    .line 403
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    .line 406
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    .line 407
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    .line 408
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    .line 409
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    goto :goto_53

    .line 412
    :pswitch_77
    const/4 v0, 0x4

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 413
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    .line 414
    iput v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    .line 416
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    .line 417
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    .line 418
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    .line 419
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    .line 422
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    .line 423
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    .line 424
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    .line 425
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    goto :goto_53

    .line 430
    :pswitch_9b
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_b7

    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    mul-float/2addr v0, v2

    div-float v0, v6, v0

    .line 433
    :goto_a8
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    .line 436
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    goto :goto_53

    .line 430
    :cond_b7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_a8

    .line 439
    :pswitch_bb
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    goto :goto_53

    .line 394
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_77
        :pswitch_54
        :pswitch_bb
        :pswitch_9b
    .end packed-switch
.end method


# virtual methods
.method public a(Z)Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->z:Landroid/graphics/Rect;

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->D:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->z:Landroid/graphics/Rect;

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->f:I

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->g:I

    if-eqz p1, :cond_14

    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->D:I

    :cond_14
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 379
    iget-object v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->z:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(F)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 211
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 212
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 250
    :goto_1a
    return-void

    .line 215
    :cond_1b
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    if-eq v2, v7, :cond_21

    .line 216
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    .line 218
    :cond_21
    iput v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 220
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    .line 221
    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    .line 223
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    .line 224
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 226
    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    .line 227
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    .line 230
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    .line 234
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 235
    cmpl-float v1, p1, v4

    if-lez v1, :cond_74

    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_74

    .line 236
    neg-float v0, v0

    .line 238
    :cond_74
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7c

    .line 239
    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    .line 243
    :cond_7c
    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    .line 246
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    .line 247
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    .line 248
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    .line 249
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    goto/16 :goto_1a
.end method

.method public a(I)V
    .registers 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 291
    const/4 v0, 0x2

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 292
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 294
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    .line 295
    const v1, 0x3dcccccd    # 0.1f

    int-to-float v2, v0

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    .line 299
    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    .line 300
    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    .line 303
    iput v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    .line 304
    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    .line 308
    const/4 v1, 0x0

    mul-int/lit8 v2, v0, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    .line 310
    mul-int/lit8 v1, v0, 0x8

    int-to-float v1, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    .line 317
    const v1, 0x3ccccccd    # 0.025f

    div-int/lit8 v2, v0, 0x64

    mul-int/2addr v2, v0

    int-to-float v2, v2

    const v3, 0x391d4952    # 1.5E-4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    .line 319
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    .line 321
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 165
    iput p1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    .line 166
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->e:I

    .line 167
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .registers 9

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/EdgeEffect;->d()V

    .line 337
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 339
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->C:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->B:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 343
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->a:I

    if-nez v2, :cond_80

    .line 344
    iget-object v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    :goto_42
    iget-object v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    iget-object v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->A:I

    int-to-float v2, v2

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 355
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->a:I

    if-nez v3, :cond_88

    .line 356
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    invoke-virtual {v3, v0, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    :goto_6a
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7a

    if-nez v1, :cond_7a

    if-nez v2, :cond_7a

    .line 364
    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 367
    :cond_7a
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    if-eqz v1, :cond_7f

    const/4 v0, 0x1

    :cond_7f
    return v0

    .line 346
    :cond_80
    iget-object v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_42

    .line 358
    :cond_88
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->b:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->d:I

    invoke-virtual {v3, v0, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 198
    return-void
.end method

.method public b(II)V
    .registers 3

    .prologue
    .line 177
    iput p1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->f:I

    .line 178
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->g:I

    .line 179
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 259
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->y:F

    .line 261
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 278
    :goto_d
    return-void

    .line 265
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->x:I

    .line 266
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->i:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->m:F

    .line 267
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->j:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->o:F

    .line 268
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->k:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->q:F

    .line 269
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->l:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->s:F

    .line 271
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->n:F

    .line 272
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->p:F

    .line 273
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->r:F

    .line 274
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->t:F

    .line 276
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->u:J

    .line 277
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->v:F

    goto :goto_d
.end method
