.class public abstract Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 68
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 73
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .prologue
    .line 77
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 78
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 82
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 83
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    return-void
.end method

.method private addIndicatorViews()V
    .registers 9

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 333
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    .line 334
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 336
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_6d

    .line 338
    new-instance v3, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 339
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 342
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 343
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v3, :cond_7f

    .line 353
    new-instance v3, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 354
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 356
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 357
    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 358
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6c
    :goto_6c
    return-void

    .line 345
    :cond_6d
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_3b

    .line 347
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 348
    iput-object v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_3b

    .line 360
    :cond_7f
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v3, :cond_6c

    .line 362
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 363
    iput-object v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_6c
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_12

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_13

    .line 46
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    :cond_12
    :goto_12
    return-object v0

    .line 48
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_12
.end method

.method private getShowIndicatorInternal()Z
    .registers 2

    .prologue
    .line 368
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isFirstItemVisible()Z
    .registers 7

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 374
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 376
    :cond_12
    const-string/jumbo v2, "PullToRefresh"

    const-string/jumbo v4, "isFirstItemVisible. Empty View."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 397
    :goto_1c
    return v2

    .line 389
    :cond_1d
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_43

    .line 390
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_43

    .line 392
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_41

    move v2, v3

    goto :goto_1c

    :cond_41
    move v2, v4

    goto :goto_1c

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_43
    move v2, v4

    .line 397
    goto :goto_1c
.end method

.method private isLastItemVisible()Z
    .registers 11

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 401
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 403
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 405
    :cond_12
    const-string/jumbo v5, "PullToRefresh"

    const-string/jumbo v7, "isLastItemVisible. Empty View."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 433
    :goto_1c
    return v5

    .line 409
    :cond_1d
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 410
    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 413
    .local v4, "lastVisiblePosition":I
    const-string/jumbo v5, "PullToRefresh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLastItemVisible. Last Item Position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Last Visible Pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_7e

    .line 425
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 426
    .local v1, "childIndex":I
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 427
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_7e

    .line 428
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_7c

    move v5, v6

    goto :goto_1c

    :cond_7c
    move v5, v7

    goto :goto_1c

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_7e
    move v5, v7

    .line 433
    goto :goto_1c
.end method

.method private removeIndicatorViews()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_10

    .line 438
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 439
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 442
    :cond_10
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1f

    .line 443
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 444
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 446
    :cond_1f
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .registers 2

    .prologue
    .line 449
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1d

    .line 450
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 451
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 452
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 461
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_3a

    .line 462
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 463
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 464
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    .line 472
    :cond_3a
    :goto_3a
    return-void

    .line 455
    :cond_3b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 456
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_1d

    .line 467
    :cond_49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 468
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_3a
.end method


# virtual methods
.method public getShowIndicator()Z
    .registers 2

    .prologue
    .line 97
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 301
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 302
    return-void

    .line 301
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isReadyForPullEnd()Z
    .registers 2

    .prologue
    .line 309
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .registers 2

    .prologue
    .line 305
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .registers 3

    .prologue
    .line 245
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onPullToRefresh()V

    .line 247
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 248
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 260
    :cond_18
    :goto_18
    return-void

    .line 250
    :pswitch_19
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_18

    .line 253
    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_18

    .line 248
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected onRefreshing(Z)V
    .registers 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 263
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onRefreshing(Z)V

    .line 265
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 268
    :cond_c
    return-void
.end method

.method protected onReleaseToRefresh()V
    .registers 3

    .prologue
    .line 272
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onReleaseToRefresh()V

    .line 274
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 275
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 287
    :cond_18
    :goto_18
    return-void

    .line 277
    :pswitch_19
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_18

    .line 280
    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_18

    .line 275
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 291
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onReset()V

    .line 293
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 296
    :cond_c
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 104
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "First Visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Visible Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Total Items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_3f

    .line 113
    if-lez p4, :cond_52

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_52

    const/4 v0, 0x1

    :goto_3d
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 117
    :cond_3f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 118
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 122
    :cond_48
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_51

    .line 123
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 125
    :cond_51
    return-void

    .line 113
    :cond_52
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 314
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 315
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez v0, :cond_12

    .line 316
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 318
    :cond_12
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 132
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 136
    :cond_f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_18

    .line 137
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 139
    :cond_18
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 150
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 151
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .registers 6
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 167
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 169
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_26

    .line 172
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 175
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_19

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    .line 176
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_36

    .line 183
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3a

    .line 190
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 194
    :goto_33
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    .line 195
    return-void

    .line 185
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_36
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 192
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3a
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_33
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 206
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    .line 210
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    .line 211
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 214
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 215
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .registers 2
    .param p1, "doScroll"    # Z

    .prologue
    .line 218
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 219
    return-void
.end method

.method public setShowIndicator(Z)V
    .registers 3
    .param p1, "showIndicator"    # Z

    .prologue
    .line 230
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 232
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 239
    :goto_b
    return-void

    .line 237
    :cond_c
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_b
.end method

.method protected updateUIForMode()V
    .registers 2

    .prologue
    .line 322
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->updateUIForMode()V

    .line 325
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 330
    :goto_c
    return-void

    .line 328
    :cond_d
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_c
.end method
