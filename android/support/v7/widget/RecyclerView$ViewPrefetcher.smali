.class Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:[I

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 4448
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 4484
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    if-eqz v0, :cond_a

    .line 4485
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4487
    :cond_a
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 4460
    # getter for: Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4463
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 4464
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->d:I

    .line 4465
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->e:I

    .line 4466
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->a:J

    .line 4467
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 4469
    :cond_2b
    return-void
.end method

.method public a(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    if-eqz v0, :cond_12

    move v0, v1

    .line 4473
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 4474
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_13

    const/4 v1, 0x1

    .line 4477
    :cond_12
    return v1

    .line 4473
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public run()V
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 4492
    :try_start_2
    const-string/jumbo v0, "RV Prefetch"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 4493
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    .line 4494
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4496
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    .line 4498
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_9f

    move-result v1

    if-eqz v1, :cond_35

    .line 4526
    :cond_31
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    .line 4528
    :goto_34
    return-void

    .line 4505
    :cond_35
    :try_start_35
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 4506
    cmp-long v1, v2, v6

    if-eqz v1, :cond_4b

    sget-wide v4, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_9f

    cmp-long v1, v4, v6

    if-nez v1, :cond_4f

    .line 4526
    :cond_4b
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_34

    .line 4511
    :cond_4f
    :try_start_4f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 4512
    sget-wide v6, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    add-long/2addr v2, v6

    .line 4513
    iget-wide v6, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->a:J

    sub-long v6, v4, v6

    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_69

    sub-long/2addr v2, v4

    .line 4514
    # getter for: Landroid/support/v7/widget/RecyclerView;->MIN_PREFETCH_TIME_NANOS:J
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$500()J
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_9f

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_6d

    .line 4526
    :cond_69
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_34

    .line 4519
    :cond_6d
    :try_start_6d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    if-eqz v1, :cond_76

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    array-length v1, v1

    if-ge v1, v0, :cond_7a

    .line 4520
    :cond_76
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    .line 4522
    :cond_7a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->d:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->e:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->gatherPrefetchIndices(IILandroid/support/v7/widget/RecyclerView$State;[I)I

    move-result v0

    .line 4524
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->b:[I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->prefetch([II)V
    :try_end_9b
    .catchall {:try_start_6d .. :try_end_9b} :catchall_9f

    .line 4526
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_34

    :catchall_9f
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    throw v0
.end method
