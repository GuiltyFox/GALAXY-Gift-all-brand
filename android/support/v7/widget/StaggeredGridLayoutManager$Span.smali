.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .registers 5

    .prologue
    const/high16 v1, -0x80000000

    .line 2413
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2408
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2409
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2410
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2414
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:I

    .line 2415
    return-void
.end method


# virtual methods
.method a(I)I
    .registers 4

    .prologue
    .line 2418
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2419
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2425
    :cond_8
    :goto_8
    return p1

    .line 2421
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2424
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a()V

    .line 2425
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    goto :goto_8
.end method

.method a(IIZ)I
    .registers 11

    .prologue
    const/4 v2, -0x1

    .line 2616
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 2617
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    .line 2618
    if-le p2, p1, :cond_40

    const/4 v0, 0x1

    move v1, v0

    .line 2619
    :goto_15
    if-eq p1, p2, :cond_3f

    .line 2620
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2621
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 2622
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 2623
    if-ge v5, v4, :cond_49

    if-le v6, v3, :cond_49

    .line 2624
    if-eqz p3, :cond_42

    .line 2625
    if-lt v5, v3, :cond_49

    if-gt v6, v4, :cond_49

    .line 2626
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2633
    :cond_3f
    :goto_3f
    return v2

    :cond_40
    move v1, v2

    .line 2618
    goto :goto_15

    .line 2629
    :cond_42
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_3f

    .line 2619
    :cond_49
    add-int/2addr p1, v1

    goto :goto_15
.end method

.method public a(II)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2640
    const/4 v4, 0x0

    .line 2641
    const/4 v0, -0x1

    if-ne p2, v0, :cond_35

    .line 2642
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 2643
    :goto_d
    if-ge v5, v6, :cond_33

    .line 2644
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2645
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2646
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_31

    move v1, v2

    :goto_26
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-ne v1, v7, :cond_33

    .line 2643
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_d

    :cond_31
    move v1, v3

    .line 2646
    goto :goto_26

    :cond_33
    move-object v0, v4

    .line 2663
    :goto_34
    return-object v0

    .line 2653
    :cond_35
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_3e
    if-ltz v6, :cond_69

    .line 2654
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2655
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 2656
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_65

    move v1, v2

    :goto_57
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v5, :cond_67

    move v5, v2

    :goto_5e
    if-ne v1, v5, :cond_69

    .line 2653
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move-object v4, v0

    goto :goto_3e

    :cond_65
    move v1, v3

    .line 2656
    goto :goto_57

    :cond_67
    move v5, v3

    goto :goto_5e

    :cond_69
    move-object v0, v4

    goto :goto_34
.end method

.method a()V
    .registers 4

    .prologue
    .line 2429
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2430
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2431
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2432
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_3a

    .line 2433
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2434
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2435
    if-eqz v0, :cond_3a

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3a

    .line 2436
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2439
    :cond_3a
    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 2485
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2486
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2487
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2488
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2489
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2490
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2492
    :cond_1b
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2493
    :cond_27
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2495
    :cond_34
    return-void
.end method

.method a(ZI)V
    .registers 6

    .prologue
    const/high16 v2, -0x80000000

    .line 2513
    if-eqz p1, :cond_e

    .line 2514
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b(I)I

    move-result v0

    .line 2518
    :goto_8
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 2519
    if-ne v0, v2, :cond_13

    .line 2530
    :cond_d
    :goto_d
    return-void

    .line 2516
    :cond_e
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(I)I

    move-result v0

    goto :goto_8

    .line 2522
    :cond_13
    if-eqz p1, :cond_1f

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_d

    :cond_1f
    if-nez p1, :cond_2b

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 2523
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2526
    :cond_2b
    if-eq p2, v2, :cond_2e

    .line 2527
    add-int/2addr v0, p2

    .line 2529
    :cond_2e
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    goto :goto_d
.end method

.method b()I
    .registers 3

    .prologue
    .line 2443
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2444
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2447
    :goto_8
    return v0

    .line 2446
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a()V

    .line 2447
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    goto :goto_8
.end method

.method b(I)I
    .registers 4

    .prologue
    .line 2451
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2452
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2459
    :cond_8
    :goto_8
    return p1

    .line 2454
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2455
    if-eqz v0, :cond_8

    .line 2458
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c()V

    .line 2459
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    goto :goto_8
.end method

.method b(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 2498
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2499
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2500
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2501
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2502
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 2503
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2505
    :cond_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2506
    :cond_26
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2508
    :cond_33
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .registers 3

    .prologue
    .line 2579
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method c()V
    .registers 4

    .prologue
    .line 2463
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2464
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2465
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2466
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_40

    .line 2467
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2468
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2469
    if-eqz v0, :cond_40

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 2470
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2473
    :cond_40
    return-void
.end method

.method c(I)V
    .registers 2

    .prologue
    .line 2544
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2545
    return-void
.end method

.method d()I
    .registers 3

    .prologue
    .line 2477
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2478
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2481
    :goto_8
    return v0

    .line 2480
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c()V

    .line 2481
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    goto :goto_8
.end method

.method d(I)V
    .registers 4

    .prologue
    const/high16 v1, -0x80000000

    .line 2583
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    if-eq v0, v1, :cond_b

    .line 2584
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2586
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    if-eq v0, v1, :cond_14

    .line 2587
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2589
    :cond_14
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 2533
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2534
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f()V

    .line 2535
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2536
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    const/high16 v0, -0x80000000

    .line 2539
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2540
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2541
    return-void
.end method

.method g()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 2548
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2549
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2550
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2551
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2552
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2553
    :cond_25
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2555
    :cond_33
    const/4 v0, 0x1

    if-ne v1, v0, :cond_38

    .line 2556
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2558
    :cond_38
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2559
    return-void
.end method

.method h()V
    .registers 5

    .prologue
    const/high16 v3, -0x80000000

    .line 2562
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2563
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2564
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2565
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 2566
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->c:I

    .line 2568
    :cond_1c
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2569
    :cond_28
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    .line 2571
    :cond_36
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->b:I

    .line 2572
    return-void
.end method

.method public i()I
    .registers 2

    .prologue
    .line 2575
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->d:I

    return v0
.end method

.method public j()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2592
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2593
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    .line 2594
    :goto_14
    return v0

    .line 2593
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2594
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_14
.end method

.method public k()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2598
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2599
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    .line 2600
    :goto_14
    return v0

    .line 2599
    :cond_15
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2600
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_14
.end method

.method public l()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2604
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2605
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    .line 2606
    :goto_11
    return v0

    .line 2605
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2606
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_11
.end method

.method public m()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2610
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2611
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    .line 2612
    :goto_12
    return v0

    .line 2611
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a:Ljava/util/ArrayList;

    .line 2612
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->a(IIZ)I

    move-result v0

    goto :goto_12
.end method
