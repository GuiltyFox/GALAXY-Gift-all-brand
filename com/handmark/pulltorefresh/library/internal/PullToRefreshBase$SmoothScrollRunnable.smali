.class final Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:J

.field private f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private g:Z

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 9

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->g:Z

    .line 1594
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->h:J

    .line 1595
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->i:I

    .line 1598
    iput p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->d:I

    .line 1599
    iput p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->c:I

    .line 1600
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->b:Landroid/view/animation/Interpolator;

    .line 1601
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->e:J

    .line 1602
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1603
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->g:Z

    .line 1642
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1643
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1612
    iget-wide v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->h:J

    .line 1631
    :goto_10
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->g:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->c:I

    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->i:I

    if-eq v0, v1, :cond_58

    .line 1632
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-static {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1638
    :cond_1f
    :goto_1f
    return-void

    .line 1621
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->h:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->e:J

    div-long/2addr v0, v2

    .line 1622
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1624
    iget v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->d:I

    iget v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->b:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1625
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1624
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1626
    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->d:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->i:I

    .line 1627
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->i:I

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_10

    .line 1634
    :cond_58
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v0, :cond_1f

    .line 1635
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;->a()V

    goto :goto_1f
.end method
