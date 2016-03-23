.class final Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 9
    .param p1, "this$0"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J
    .param p6, "listener"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1597
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1594
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1595
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1598
    iput p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1599
    iput p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1600
    # getter for: Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->access$200(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1601
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1602
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1603
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v8, 0x3e8

    .line 1612
    iget-wide v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_20

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1631
    :goto_10
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v1, :cond_58

    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v1, v4, :cond_58

    .line 1632
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-static {v1, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1638
    :cond_1f
    :goto_1f
    return-void

    .line 1621
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v2, v4, v6

    .line 1622
    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1624
    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000

    div-float/2addr v5, v6

    .line 1625
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    .line 1624
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1626
    .local v0, "deltaY":I
    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1627
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    iget v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_10

    .line 1634
    .end local v0    # "deltaY":I
    .end local v2    # "normalizedTime":J
    :cond_58
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v1, :cond_1f

    .line 1635
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1f
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1641
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1642
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1643
    return-void
.end method
