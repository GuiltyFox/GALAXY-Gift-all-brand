.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:I

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .registers 5

    .prologue
    const/high16 v1, -0x80000000

    .line 2341
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    .line 2336
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2337
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2338
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2342
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2343
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .registers 4

    .prologue
    .line 2332
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 2332
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method a(I)I
    .registers 4

    .prologue
    .line 2346
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2347
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2353
    :cond_8
    :goto_8
    return p1

    .line 2349
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2352
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a()V

    .line 2353
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    goto :goto_8
.end method

.method a(IIZ)I
    .registers 11

    .prologue
    const/4 v2, -0x1

    .line 2544
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 2545
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    .line 2546
    if-le p2, p1, :cond_40

    const/4 v0, 0x1

    move v1, v0

    .line 2547
    :goto_15
    if-eq p1, p2, :cond_3f

    .line 2548
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2549
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 2550
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 2551
    if-ge v5, v4, :cond_49

    if-le v6, v3, :cond_49

    .line 2552
    if-eqz p3, :cond_42

    .line 2553
    if-lt v5, v3, :cond_49

    if-gt v6, v4, :cond_49

    .line 2554
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2561
    :cond_3f
    :goto_3f
    return v2

    :cond_40
    move v1, v2

    .line 2546
    goto :goto_15

    .line 2557
    :cond_42
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_3f

    .line 2547
    :cond_49
    add-int/2addr p1, v1

    goto :goto_15
.end method

.method public a(II)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2568
    const/4 v4, 0x0

    .line 2569
    const/4 v0, -0x1

    if-ne p2, v0, :cond_37

    .line 2570
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 2571
    :goto_d
    if-ge v5, v6, :cond_35

    .line 2572
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2573
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_33

    move v1, v2

    :goto_26
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v7

    if-ne v1, v7, :cond_35

    .line 2571
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_d

    :cond_33
    move v1, v3

    .line 2573
    goto :goto_26

    :cond_35
    move-object v0, v4

    .line 2591
    :goto_36
    return-object v0

    .line 2581
    :cond_37
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_40
    if-ltz v6, :cond_6d

    .line 2582
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2583
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_69

    move v1, v2

    :goto_59
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v5

    if-nez v5, :cond_6b

    move v5, v2

    :goto_62
    if-ne v1, v5, :cond_6d

    .line 2581
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move-object v4, v0

    goto :goto_40

    :cond_69
    move v1, v3

    .line 2583
    goto :goto_59

    :cond_6b
    move v5, v3

    goto :goto_62

    :cond_6d
    move-object v0, v4

    goto :goto_36
.end method

.method a()V
    .registers 4

    .prologue
    .line 2357
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2358
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2359
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2360
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_3a

    .line 2361
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2363
    if-eqz v0, :cond_3a

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3a

    .line 2364
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2367
    :cond_3a
    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 2413
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2414
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2415
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2416
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2417
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2418
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2420
    :cond_1b
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2421
    :cond_27
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2423
    :cond_34
    return-void
.end method

.method a(ZI)V
    .registers 6

    .prologue
    const/high16 v2, -0x80000000

    .line 2441
    if-eqz p1, :cond_e

    .line 2442
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b(I)I

    move-result v0

    .line 2446
    :goto_8
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 2447
    if-ne v0, v2, :cond_13

    .line 2458
    :cond_d
    :goto_d
    return-void

    .line 2444
    :cond_e
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(I)I

    move-result v0

    goto :goto_8

    .line 2450
    :cond_13
    if-eqz p1, :cond_1f

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_d

    :cond_1f
    if-nez p1, :cond_2b

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2454
    :cond_2b
    if-eq p2, v2, :cond_2e

    .line 2455
    add-int/2addr v0, p2

    .line 2457
    :cond_2e
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    goto :goto_d
.end method

.method b()I
    .registers 3

    .prologue
    .line 2371
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2372
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2375
    :goto_8
    return v0

    .line 2374
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a()V

    .line 2375
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    goto :goto_8
.end method

.method b(I)I
    .registers 4

    .prologue
    .line 2379
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2380
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2387
    :cond_8
    :goto_8
    return p1

    .line 2382
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2383
    if-eqz v0, :cond_8

    .line 2386
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c()V

    .line 2387
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    goto :goto_8
.end method

.method b(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 2426
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2427
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2428
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2430
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 2431
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2433
    :cond_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2434
    :cond_26
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2436
    :cond_33
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .registers 3

    .prologue
    .line 2507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method c()V
    .registers 4

    .prologue
    .line 2391
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2392
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2393
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2394
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_40

    .line 2395
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2397
    if-eqz v0, :cond_40

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 2398
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2401
    :cond_40
    return-void
.end method

.method c(I)V
    .registers 2

    .prologue
    .line 2472
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2473
    return-void
.end method

.method d()I
    .registers 3

    .prologue
    .line 2405
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2406
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2409
    :goto_8
    return v0

    .line 2408
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c()V

    .line 2409
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    goto :goto_8
.end method

.method d(I)V
    .registers 4

    .prologue
    const/high16 v1, -0x80000000

    .line 2511
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    if-eq v0, v1, :cond_b

    .line 2512
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2514
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    if-eq v0, v1, :cond_14

    .line 2515
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2517
    :cond_14
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2462
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f()V

    .line 2463
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2464
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    const/high16 v0, -0x80000000

    .line 2467
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2468
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2469
    return-void
.end method

.method g()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 2476
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2477
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2478
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2479
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2480
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2481
    :cond_25
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2483
    :cond_33
    const/4 v0, 0x1

    if-ne v1, v0, :cond_38

    .line 2484
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2486
    :cond_38
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2487
    return-void
.end method

.method h()V
    .registers 5

    .prologue
    const/high16 v3, -0x80000000

    .line 2490
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2491
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2492
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2493
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 2494
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2496
    :cond_1c
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2497
    :cond_28
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2499
    :cond_36
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:I

    .line 2500
    return-void
.end method

.method public i()I
    .registers 2

    .prologue
    .line 2503
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    return v0
.end method

.method public j()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2520
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_16
.end method

.method public k()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2526
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_16
.end method

.method public l()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2532
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_13
.end method

.method public m()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2538
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_14
.end method
