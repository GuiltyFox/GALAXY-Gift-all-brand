.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/support/v4/widget/ScrollerCompat;

.field private final r:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 327
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .registers 7

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 335
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    .line 377
    if-nez p2, :cond_18

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_18
    if-nez p3, :cond_23

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_23
    iput-object p2, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    .line 385
    iput-object p3, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 387
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 389
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    .line 391
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    .line 392
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    .line 393
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    .line 394
    sget-object v0, Landroid/support/v4/widget/ViewDragHelper;->v:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    .line 395
    return-void
.end method

.method private a(FFF)F
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 677
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 678
    cmpg-float v2, v1, p2

    if-gez v2, :cond_b

    move p3, v0

    .line 680
    :cond_a
    :goto_a
    return p3

    .line 679
    :cond_b
    cmpl-float v1, v1, p3

    if-lez v1, :cond_15

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_a

    neg-float p3, p3

    goto :goto_a

    :cond_15
    move p3, p1

    .line 680
    goto :goto_a
.end method

.method private a(III)I
    .registers 8

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 628
    if-nez p1, :cond_6

    .line 629
    const/4 v0, 0x0

    .line 646
    :goto_5
    return v0

    .line 632
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 633
    div-int/lit8 v1, v0, 0x2

    .line 634
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 635
    int-to-float v2, v1

    int-to-float v1, v1

    .line 636
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 639
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 640
    if-lez v1, :cond_3e

    .line 641
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 646
    :goto_37
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 643
    :cond_3e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 644
    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_37
.end method

.method private a(Landroid/view/View;IIII)I
    .registers 14

    .prologue
    .line 607
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->b(III)I

    move-result v2

    .line 608
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->b(III)I

    move-result v3

    .line 609
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 610
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 611
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 612
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 613
    add-int v6, v1, v5

    .line 614
    add-int v7, v0, v4

    .line 616
    if-eqz v2, :cond_4e

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    .line 618
    :goto_2e
    if-eqz v3, :cond_53

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 621
    :goto_33
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(III)I

    move-result v2

    .line 622
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->a(III)I

    move-result v3

    .line 624
    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 616
    :cond_4e
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_2e

    .line 618
    :cond_53
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_33
.end method

.method public static a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .registers 6

    .prologue
    .line 363
    invoke-static {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    .line 364
    iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    .line 365
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .registers 4

    .prologue
    .line 350
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private a(FF)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 769
    iput-boolean v3, p0, Landroid/support/v4/widget/ViewDragHelper;->t:Z

    .line 770
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 771
    iput-boolean v2, p0, Landroid/support/v4/widget/ViewDragHelper;->t:Z

    .line 773
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v0, v3, :cond_14

    .line 775
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    .line 777
    :cond_14
    return-void
.end method

.method private a(FFI)V
    .registers 7

    .prologue
    .line 838
    invoke-direct {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->f(I)V

    .line 839
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 840
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 841
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->e(II)I

    move-result v1

    aput v1, v0, p3

    .line 842
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    .line 843
    return-void
.end method

.method private a(FFII)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1269
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1270
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1272
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_31

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_31

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_32

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_32

    .line 1282
    :cond_31
    :goto_31
    return v0

    .line 1278
    :cond_32
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_49

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1279
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_31

    .line 1282
    :cond_49
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_31

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    const/4 v0, 0x1

    goto :goto_31
.end method

.method private a(IIII)Z
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 588
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 589
    sub-int v2, p1, v7

    .line 590
    sub-int v3, p2, v6

    .line 592
    if-nez v2, :cond_1e

    if-nez v3, :cond_1e

    .line 594
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 595
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    .line 603
    :goto_1d
    return v0

    .line 599
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;IIII)I

    move-result v9

    .line 600
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIII)V

    .line 602
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    .line 603
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private a(Landroid/view/View;FF)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1296
    if-nez p1, :cond_6

    move v1, v2

    .line 1309
    :cond_5
    :goto_5
    return v1

    .line 1299
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2d

    move v0, v1

    .line 1300
    :goto_f
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2f

    move v3, v1

    .line 1302
    :goto_18
    if-eqz v0, :cond_31

    if-eqz v3, :cond_31

    .line 1303
    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    :cond_2d
    move v0, v2

    .line 1299
    goto :goto_f

    :cond_2f
    move v3, v2

    .line 1300
    goto :goto_18

    .line 1304
    :cond_31
    if-eqz v0, :cond_40

    .line 1305
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    .line 1306
    :cond_40
    if-eqz v3, :cond_4f

    .line 1307
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    move v1, v2

    goto :goto_5

    :cond_4f
    move v1, v2

    .line 1309
    goto :goto_5
.end method

.method private b(F)F
    .registers 6

    .prologue
    .line 684
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 685
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 686
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(III)I
    .registers 5

    .prologue
    .line 660
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 661
    if-ge v0, p2, :cond_8

    const/4 p3, 0x0

    .line 663
    :cond_7
    :goto_7
    return p3

    .line 662
    :cond_8
    if-le v0, p3, :cond_e

    if-gtz p1, :cond_7

    neg-int p3, p3

    goto :goto_7

    :cond_e
    move p3, p1

    .line 663
    goto :goto_7
.end method

.method private b(FFI)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1248
    const/4 v1, 0x0

    .line 1249
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/ViewDragHelper;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1252
    :goto_8
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1253
    or-int/lit8 v0, v0, 0x4

    .line 1255
    :cond_11
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1256
    or-int/lit8 v0, v0, 0x2

    .line 1258
    :cond_1a
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1259
    or-int/lit8 v0, v0, 0x8

    .line 1262
    :cond_24
    if-eqz v0, :cond_32

    .line 1263
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1264
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1266
    :cond_32
    return-void

    :cond_33
    move v0, v1

    goto :goto_8
.end method

.method private b(IIII)V
    .registers 11

    .prologue
    .line 1417
    .line 1419
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1420
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1421
    if-eqz p3, :cond_40

    .line 1422
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1423
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 1425
    :goto_1d
    if-eqz p4, :cond_3e

    .line 1426
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1427
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 1430
    :goto_2e
    if-nez p3, :cond_32

    if-eqz p4, :cond_3d

    .line 1431
    :cond_32
    sub-int v4, v2, v0

    .line 1432
    sub-int v5, v3, v1

    .line 1433
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1436
    :cond_3d
    return-void

    :cond_3e
    move v3, p2

    goto :goto_2e

    :cond_40
    move v2, p1

    goto :goto_1d
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 8

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 847
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_25

    .line 848
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 850
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->g(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 847
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 853
    :cond_14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 854
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 855
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    aput v3, v5, v2

    .line 856
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    aput v4, v3, v2

    goto :goto_11

    .line 858
    :cond_25
    return-void
.end method

.method private e(II)I
    .registers 6

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1493
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_d

    const/4 v0, 0x1

    .line 1494
    :cond_d
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1a

    or-int/lit8 v0, v0, 0x4

    .line 1495
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_27

    or-int/lit8 v0, v0, 0x2

    .line 1496
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_34

    or-int/lit8 v0, v0, 0x8

    .line 1498
    :cond_34
    return v0
.end method

.method private e(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 805
    :cond_c
    :goto_c
    return-void

    .line 797
    :cond_d
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    aput v1, v0, p1

    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    aput v1, v0, p1

    .line 799
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    aput v1, v0, p1

    .line 800
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    aput v1, v0, p1

    .line 801
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aput v2, v0, p1

    .line 802
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    aput v2, v0, p1

    .line 803
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    aput v2, v0, p1

    .line 804
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    goto :goto_c
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    if-nez v0, :cond_7

    .line 791
    :goto_6
    return-void

    .line 783
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 785
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 786
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 787
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 790
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    goto :goto_6
.end method

.method private f(I)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 808
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_70

    .line 809
    :cond_a
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 810
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 811
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 812
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 813
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 814
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 815
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 817
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    if-eqz v7, :cond_62

    .line 818
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    :cond_62
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    .line 828
    iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    .line 829
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    .line 830
    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    .line 831
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    .line 832
    iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->i:[I

    .line 833
    iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->j:[I

    .line 835
    :cond_70
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1407
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 1408
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    .line 1407
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(FFF)F

    move-result v0

    .line 1410
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 1411
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->m:F

    .line 1410
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->a(FFF)F

    move-result v1

    .line 1413
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(FF)V

    .line 1414
    return-void
.end method

.method private g(I)Z
    .registers 5

    .prologue
    .line 1502
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->b(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1503
    const-string/jumbo v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because ACTION_DOWN was not received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v0, 0x0

    .line 1508
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    return v0
.end method

.method public a(F)V
    .registers 2

    .prologue
    .line 404
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->n:F

    .line 405
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 440
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    .line 441
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_2b

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_2b
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    .line 469
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 470
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    .line 472
    return-void
.end method

.method public a(II)Z
    .registers 6

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->t:Z

    if-nez v0, :cond_d

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_d
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 573
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 574
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 572
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 15

    .prologue
    .line 954
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 955
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 957
    if-nez v0, :cond_d

    .line 960
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    .line 963
    :cond_d
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 964
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    .line 966
    :cond_17
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 968
    packed-switch v0, :pswitch_data_130

    .line 1080
    :cond_1f
    :goto_1f
    :pswitch_1f
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12d

    const/4 v0, 0x1

    :goto_25
    return v0

    .line 970
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 972
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 973
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(FFI)V

    .line 975
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v0

    .line 978
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    if-ne v0, v1, :cond_48

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_48

    .line 979
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 982
    :cond_48
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aget v0, v0, v2

    .line 983
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 984
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_1f

    .line 990
    :pswitch_5a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 991
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 992
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 994
    invoke-direct {p0, v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->a(FFI)V

    .line 997
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-nez v3, :cond_7f

    .line 998
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aget v1, v1, v0

    .line 999
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1f

    .line 1000
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_1f

    .line 1002
    :cond_7f
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 1004
    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v1

    .line 1005
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    if-ne v1, v2, :cond_1f

    .line 1006
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    goto :goto_1f

    .line 1013
    :pswitch_92
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    if-eqz v0, :cond_1f

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1017
    const/4 v0, 0x0

    move v1, v0

    :goto_a0
    if-ge v1, v2, :cond_107

    .line 1018
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1021
    invoke-direct {p0, v3}, Landroid/support/v4/widget/ViewDragHelper;->g(I)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 1017
    :cond_ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a0

    .line 1023
    :cond_b0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1024
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1025
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    aget v5, v5, v3

    sub-float v5, v0, v5

    .line 1026
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    aget v6, v6, v3

    sub-float v6, v4, v6

    .line 1028
    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v4

    .line 1029
    if-eqz v4, :cond_10c

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x1

    .line 1030
    :goto_d3
    if-eqz v0, :cond_10e

    .line 1036
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1037
    float-to-int v8, v5

    add-int/2addr v8, v7

    .line 1038
    iget-object v9, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    float-to-int v10, v5

    invoke-virtual {v9, v4, v8, v10}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v8

    .line 1040
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1041
    float-to-int v10, v6

    add-int/2addr v10, v9

    .line 1042
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    float-to-int v12, v6

    invoke-virtual {v11, v4, v10, v12}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v10

    .line 1044
    iget-object v11, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v11, v4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v11

    .line 1046
    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, v4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    .line 1047
    if-eqz v11, :cond_101

    if-lez v11, :cond_10e

    if-ne v8, v7, :cond_10e

    :cond_101
    if-eqz v12, :cond_107

    if-lez v12, :cond_10e

    if-ne v10, v9, :cond_10e

    .line 1063
    :cond_107
    :goto_107
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1f

    .line 1029
    :cond_10c
    const/4 v0, 0x0

    goto :goto_d3

    .line 1053
    :cond_10e
    invoke-direct {p0, v5, v6, v3}, Landroid/support/v4/widget/ViewDragHelper;->b(FFI)V

    .line 1054
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_107

    .line 1059
    if-eqz v0, :cond_ac

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_107

    .line 1068
    :pswitch_11f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1069
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->e(I)V

    goto/16 :goto_1f

    .line 1075
    :pswitch_128
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    goto/16 :goto_1f

    .line 1080
    :cond_12d
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 968
    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_26
        :pswitch_128
        :pswitch_92
        :pswitch_128
        :pswitch_1f
        :pswitch_5a
        :pswitch_11f
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 542
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 545
    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(IIII)Z

    move-result v0

    .line 546
    if-nez v0, :cond_17

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    .line 552
    :cond_17
    return v0
.end method

.method public a(Z)Z
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 725
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v0, v8, :cond_64

    .line 726
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    move-result v7

    .line 727
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->b()I

    move-result v2

    .line 728
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->c()I

    move-result v3

    .line 729
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 730
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 732
    if-eqz v4, :cond_2f

    .line 733
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 735
    :cond_2f
    if-eqz v5, :cond_36

    .line 736
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 739
    :cond_36
    if-nez v4, :cond_3a

    if-eqz v5, :cond_41

    .line 740
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 743
    :cond_41
    if-eqz v7, :cond_70

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->d()I

    move-result v0

    if-ne v2, v0, :cond_70

    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->e()I

    move-result v0

    if-ne v3, v0, :cond_70

    .line 746
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->q:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    move v0, v6

    .line 750
    :goto_59
    if-nez v0, :cond_64

    .line 751
    if-eqz p1, :cond_6a

    .line 752
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_64
    :goto_64
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v0, v8, :cond_6e

    const/4 v0, 0x1

    :goto_69
    return v0

    .line 754
    :cond_6a
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/ViewDragHelper;->c(I)V

    goto :goto_64

    :cond_6e
    move v0, v6

    .line 759
    goto :goto_69

    :cond_70
    move v0, v7

    goto :goto_59
.end method

.method public b()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->o:I

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 11

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1090
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1091
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1093
    if-nez v2, :cond_11

    .line 1096
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    .line 1099
    :cond_11
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    .line 1100
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    .line 1102
    :cond_1b
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1104
    packed-switch v2, :pswitch_data_16e

    .line 1245
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 1106
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1109
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v3

    .line 1111
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->a(FFI)V

    .line 1116
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 1118
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aget v1, v1, v0

    .line 1119
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    .line 1120
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_23

    .line 1126
    :pswitch_4e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1127
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1128
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1130
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->a(FFI)V

    .line 1133
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-nez v3, :cond_7c

    .line 1136
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v1

    .line 1137
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 1139
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->h:[I

    aget v1, v1, v0

    .line 1140
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_23

    .line 1141
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_23

    .line 1143
    :cond_7c
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->c(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1148
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    goto :goto_23

    .line 1154
    :pswitch_8a
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v1, v8, :cond_ca

    .line 1156
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->g(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1158
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1159
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1161
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1162
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1164
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->b(IIII)V

    .line 1166
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    .line 1169
    :cond_ca
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1170
    :goto_ce
    if-ge v0, v1, :cond_f8

    .line 1171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1174
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->g(I)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 1170
    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    .line 1176
    :cond_dd
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1177
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1178
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    .line 1179
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    .line 1181
    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->b(FFI)V

    .line 1182
    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v7, v8, :cond_fd

    .line 1193
    :cond_f8
    :goto_f8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    .line 1187
    :cond_fd
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v3

    .line 1188
    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1189
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_da

    goto :goto_f8

    .line 1199
    :pswitch_110
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1200
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v3, v8, :cond_14e

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    if-ne v2, v3, :cond_14e

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1204
    :goto_120
    if-ge v0, v3, :cond_16b

    .line 1205
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1206
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    if-ne v4, v5, :cond_12d

    .line 1204
    :cond_12a
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    .line 1211
    :cond_12d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1212
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1213
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->d(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    if-ne v5, v6, :cond_12a

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    .line 1214
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1215
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 1220
    :goto_149
    if-ne v0, v1, :cond_14e

    .line 1222
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->g()V

    .line 1225
    :cond_14e
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->e(I)V

    goto/16 :goto_23

    .line 1230
    :pswitch_153
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v0, v8, :cond_15a

    .line 1231
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->g()V

    .line 1233
    :cond_15a
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    goto/16 :goto_23

    .line 1238
    :pswitch_15f
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-ne v0, v8, :cond_166

    .line 1239
    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/ViewDragHelper;->a(FF)V

    .line 1241
    :cond_166
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->e()V

    goto/16 :goto_23

    :cond_16b
    move v0, v1

    goto :goto_149

    .line 1104
    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_153
        :pswitch_8a
        :pswitch_15f
        :pswitch_23
        :pswitch_4e
        :pswitch_110
    .end packed-switch
.end method

.method public b(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 874
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->k:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(II)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1352
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->b(I)Z

    move-result v0

    if-nez v0, :cond_a

    move v1, v2

    .line 1369
    :cond_9
    :goto_9
    return v1

    .line 1356
    :cond_a
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_3c

    move v3, v1

    .line 1357
    :goto_f
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3e

    move v0, v1

    .line 1359
    :goto_15
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->f:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1360
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->g:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->e:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1362
    if-eqz v3, :cond_40

    if-eqz v0, :cond_40

    .line 1363
    mul-float v0, v4, v4

    mul-float v3, v5, v5

    add-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    :cond_3c
    move v3, v2

    .line 1356
    goto :goto_f

    :cond_3e
    move v0, v2

    .line 1357
    goto :goto_15

    .line 1364
    :cond_40
    if-eqz v3, :cond_4f

    .line 1365
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    .line 1366
    :cond_4f
    if-eqz v0, :cond_5e

    .line 1367
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_9

    :cond_5e
    move v1, v2

    .line 1369
    goto :goto_9
.end method

.method b(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 898
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    if-ne p1, v1, :cond_a

    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    if-ne v1, p2, :cond_a

    .line 907
    :goto_9
    return v0

    .line 902
    :cond_a
    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 903
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 904
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;I)V

    goto :goto_9

    .line 907
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Landroid/view/View;II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1461
    if-nez p1, :cond_4

    .line 1467
    :cond_3
    :goto_3
    return v0

    .line 1464
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_3

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public c()Landroid/view/View;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    return-object v0
.end method

.method c(I)V
    .registers 4

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 879
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-eq v0, p1, :cond_19

    .line 880
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    .line 881
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 882
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->a:I

    if-nez v0, :cond_19

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    .line 886
    :cond_19
    return-void
.end method

.method public c(II)Z
    .registers 4

    .prologue
    .line 1448
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 493
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->b:I

    return v0
.end method

.method public d(II)Landroid/view/View;
    .registers 6

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1480
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_34

    .line 1481
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->r:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_30

    .line 1483
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_30

    .line 1487
    :goto_2f
    return-object v0

    .line 1480
    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 1487
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public d(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1327
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->d:[F

    array-length v2, v1

    move v1, v0

    .line 1328
    :goto_5
    if-ge v1, v2, :cond_e

    .line 1329
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->b(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1330
    const/4 v0, 0x1

    .line 1333
    :cond_e
    return v0

    .line 1328
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public e()V
    .registers 2

    .prologue
    .line 501
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->c:I

    .line 502
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->f()V

    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->l:Landroid/view/VelocityTracker;

    .line 508
    :cond_12
    return-void
.end method
