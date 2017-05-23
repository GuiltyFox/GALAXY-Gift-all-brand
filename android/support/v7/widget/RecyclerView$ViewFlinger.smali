.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/ScrollerCompat;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4544
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4535
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    .line 4539
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4542
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4545
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4546
    return-void
.end method

.method private a(F)F
    .registers 6

    .prologue
    .line 4705
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4706
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4707
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .registers 14

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4711
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4712
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4713
    if-le v2, v3, :cond_56

    const/4 v0, 0x1

    .line 4714
    :goto_d
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4715
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4716
    if-eqz v0, :cond_58

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4717
    :goto_2b
    div-int/lit8 v6, v1, 0x2

    .line 4718
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4719
    int-to-float v7, v6

    int-to-float v6, v6

    .line 4720
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4723
    if-lez v4, :cond_5f

    .line 4724
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4729
    :goto_4f
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4713
    :cond_56
    const/4 v0, 0x0

    goto :goto_d

    .line 4716
    :cond_58
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_2b

    .line 4726
    :cond_5f
    if-eqz v0, :cond_6b

    move v0, v2

    :goto_62
    int-to-float v0, v0

    .line 4727
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_4f

    :cond_6b
    move v0, v3

    .line 4726
    goto :goto_62
.end method

.method private c()V
    .registers 2

    .prologue
    .line 4668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4670
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 4673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    .line 4674
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-eqz v0, :cond_a

    .line 4675
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4677
    :cond_a
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 4680
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->f:Z

    if-eqz v0, :cond_8

    .line 4681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    .line 4686
    :goto_7
    return-void

    .line 4683
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4684
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method public a(II)V
    .registers 12

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4690
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4691
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIIIIII)V

    .line 4693
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4694
    return-void
.end method

.method public a(III)V
    .registers 5

    .prologue
    .line 4733
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4734
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 4701
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(III)V

    .line 4702
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 4737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    .line 4738
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->e:Landroid/view/animation/Interpolator;

    .line 4739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4741
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4742
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->a(IIIII)V

    .line 4744
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4745
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 4748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 4750
    return-void
.end method

.method public b(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4697
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(IIII)V

    .line 4698
    return-void
.end method

.method public run()V
    .registers 16

    .prologue
    .line 4550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_a

    .line 4551
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b()V

    .line 4665
    :goto_9
    return-void

    .line 4554
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c()V

    .line 4555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4558
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 4559
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4560
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->g()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 4561
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->b()I

    move-result v9

    .line 4562
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->c()I

    move-result v10

    .line 4563
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    sub-int v11, v9, v0

    .line 4564
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    sub-int v12, v10, v0

    .line 4565
    const/4 v3, 0x0

    .line 4566
    const/4 v1, 0x0

    .line 4567
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b:I

    .line 4568
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->c:I

    .line 4569
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4570
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_18f

    .line 4571
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4572
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4573
    const-string/jumbo v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 4574
    if-eqz v11, :cond_62

    .line 4575
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 4576
    sub-int v2, v11, v3

    .line 4578
    :cond_62
    if-eqz v12, :cond_76

    .line 4579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 4580
    sub-int v0, v12, v1

    .line 4582
    :cond_76
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    .line 4583
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4585
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4586
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4588
    if-eqz v8, :cond_18f

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_18f

    .line 4589
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 4590
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 4591
    if-nez v4, :cond_171

    .line 4592
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4601
    :goto_a7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b6

    .line 4602
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4604
    :cond_b6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c4

    .line 4605
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 4607
    :cond_c4
    if-nez v1, :cond_c8

    if-eqz v0, :cond_ff

    .line 4608
    :cond_c8
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->f()F

    move-result v4

    float-to-int v5, v4

    .line 4610
    const/4 v4, 0x0

    .line 4611
    if-eq v1, v9, :cond_1bc

    .line 4612
    if-gez v1, :cond_194

    neg-int v4, v5

    :goto_d3
    move v6, v4

    .line 4615
    :goto_d4
    const/4 v4, 0x0

    .line 4616
    if-eq v0, v10, :cond_1b9

    .line 4617
    if-gez v0, :cond_19c

    neg-int v5, v5

    .line 4620
    :cond_da
    :goto_da
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_e8

    .line 4621
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4623
    :cond_e8
    if-nez v6, :cond_f2

    if-eq v1, v9, :cond_f2

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->d()I

    move-result v1

    if-nez v1, :cond_ff

    :cond_f2
    if-nez v5, :cond_fc

    if-eq v0, v10, :cond_fc

    .line 4624
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->e()I

    move-result v0

    if-nez v0, :cond_ff

    .line 4625
    :cond_fc
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->h()V

    .line 4628
    :cond_ff
    if-nez v3, :cond_103

    if-eqz v2, :cond_108

    .line 4629
    :cond_103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4632
    :cond_108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 4633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4636
    :cond_115
    if-eqz v12, :cond_1a1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1a1

    if-ne v2, v12, :cond_1a1

    const/4 v0, 0x1

    move v1, v0

    .line 4638
    :goto_125
    if-eqz v11, :cond_1a4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1a4

    if-ne v3, v11, :cond_1a4

    const/4 v0, 0x1

    .line 4640
    :goto_134
    if-nez v11, :cond_138

    if-eqz v12, :cond_13c

    :cond_138
    if-nez v0, :cond_13c

    if-eqz v1, :cond_1a6

    :cond_13c
    const/4 v0, 0x1

    .line 4643
    :goto_13d
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->a()Z

    move-result v1

    if-nez v1, :cond_145

    if-nez v0, :cond_1a8

    .line 4644
    :cond_145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4645
    # getter for: Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$400()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 4646
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewPrefetcher:Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->a()V

    .line 4656
    :cond_158
    :goto_158
    if-eqz v8, :cond_16c

    .line 4657
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 4658
    const/4 v0, 0x0

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4660
    :cond_165
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->g:Z

    if-nez v0, :cond_16c

    .line 4661
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4664
    :cond_16c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->d()V

    goto/16 :goto_9

    .line 4593
    :cond_171
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v5

    if-lt v5, v4, :cond_188

    .line 4594
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4595
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_a7

    .line 4597
    :cond_188
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_18f
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_a7

    .line 4612
    :cond_194
    if-lez v1, :cond_199

    move v4, v5

    goto/16 :goto_d3

    :cond_199
    const/4 v4, 0x0

    goto/16 :goto_d3

    .line 4617
    :cond_19c
    if-gtz v0, :cond_da

    const/4 v5, 0x0

    goto/16 :goto_da

    .line 4636
    :cond_1a1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_125

    .line 4638
    :cond_1a4
    const/4 v0, 0x0

    goto :goto_134

    .line 4640
    :cond_1a6
    const/4 v0, 0x0

    goto :goto_13d

    .line 4649
    :cond_1a8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a()V

    .line 4650
    # getter for: Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$400()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 4651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewPrefetcher:Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;

    invoke-virtual {v0, v11, v12}, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->a(II)V

    goto :goto_158

    :cond_1b9
    move v5, v4

    goto/16 :goto_da

    :cond_1bc
    move v6, v4

    goto/16 :goto_d4
.end method
