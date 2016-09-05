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
.field private b:Z

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

.field private e:Landroid/view/View;

.field private f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    .line 68
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    .line 73
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 4

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    .line 78
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 5

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    .line 83
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    return-void
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    if-eqz p0, :cond_12

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_13

    .line 46
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    :cond_12
    :goto_12
    return-object v0

    .line 48
    :cond_13
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_12
.end method

.method private getShowIndicatorInternal()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private q()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 333
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->o()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 336
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_6d

    .line 338
    new-instance v2, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-direct {v2, v3, v4}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 339
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 342
    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 343
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_7f

    .line 353
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-direct {v0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 354
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 356
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$dimen;->indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 357
    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 358
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :cond_6c
    :goto_6c
    return-void

    .line 345
    :cond_6d
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v2, :cond_3b

    .line 347
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 348
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_3b

    .line 360
    :cond_7f
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_6c

    .line 362
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 363
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_6c
.end method

.method private r()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 376
    :cond_12
    const-string/jumbo v0, "PullToRefresh"

    const-string/jumbo v2, "isFirstItemVisible. Empty View."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 397
    :goto_1c
    return v0

    .line 389
    :cond_1d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, v1, :cond_43

    .line 390
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_43

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_41

    move v0, v1

    goto :goto_1c

    :cond_41
    move v0, v2

    goto :goto_1c

    :cond_43
    move v0, v2

    .line 397
    goto :goto_1c
.end method

.method private s()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 405
    :cond_12
    const-string/jumbo v0, "PullToRefresh"

    const-string/jumbo v2, "isLastItemVisible. Empty View."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 433
    :goto_1c
    return v0

    .line 409
    :cond_1d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 410
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 413
    const-string/jumbo v0, "PullToRefresh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLastItemVisible. Last Item Position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Last Visible Pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    add-int/lit8 v0, v3, -0x1

    if-lt v4, v0, :cond_7e

    .line 425
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    .line 426
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_7e

    .line 428
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_7c

    move v0, v1

    goto :goto_1c

    :cond_7c
    move v0, v2

    goto :goto_1c

    :cond_7e
    move v0, v2

    .line 433
    goto :goto_1c
.end method

.method private t()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_10

    .line 438
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->o()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 439
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 442
    :cond_10
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1f

    .line 443
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->o()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 444
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 446
    :cond_1f
    return-void
.end method

.method private u()V
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1d

    .line 450
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->n()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->e()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 451
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 452
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c()V

    .line 461
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_3a

    .line 462
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->n()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 463
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 464
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c()V

    .line 472
    :cond_3a
    :goto_3a
    return-void

    .line 455
    :cond_3b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 456
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b()V

    goto :goto_1d

    .line 467
    :cond_49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 468
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b()V

    goto :goto_3a
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;)V
    .registers 4

    .prologue
    .line 301
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->m()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h:Z

    .line 302
    return-void

    .line 301
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->o()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 169
    if-eqz p1, :cond_26

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_19

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    .line 176
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_36

    .line 183
    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v0, :cond_3a

    .line 190
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->a(Landroid/view/View;)V

    .line 194
    :goto_33
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    .line 195
    return-void

    .line 185
    :cond_36
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 192
    :cond_3a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_33
.end method

.method protected a(Z)V
    .registers 3

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Z)V

    .line 265
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->u()V

    .line 268
    :cond_c
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b()V

    .line 247
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 248
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

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
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e()V

    goto :goto_18

    .line 253
    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e()V

    goto :goto_18

    .line 248
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 272
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c()V

    .line 274
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 275
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

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
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d()V

    goto :goto_18

    .line 280
    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d()V

    goto :goto_18

    .line 275
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d()V

    .line 293
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->u()V

    .line 296
    :cond_c
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->r()Z

    move-result v0

    return v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->s()Z

    move-result v0

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g()V

    .line 325
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->q()V

    .line 330
    :goto_c
    return-void

    .line 328
    :cond_d
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->t()V

    goto :goto_c
.end method

.method public getShowIndicator()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h:Z

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    .prologue
    .line 104
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
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_3f

    .line 113
    if-lez p4, :cond_52

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_52

    const/4 v0, 0x1

    :goto_3d
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->b:Z

    .line 117
    :cond_3f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 118
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->u()V

    .line 122
    :cond_48
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_51

    .line 123
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

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

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 315
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    if-nez v0, :cond_12

    .line 316
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 318
    :cond_12
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .prologue
    .line 132
    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->b:Z

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;->a()V

    .line 136
    :cond_f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_18

    .line 137
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 139
    :cond_18
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .registers 2

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->i:Z

    .line 219
    return-void
.end method

.method public setShowIndicator(Z)V
    .registers 3

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->h:Z

    .line 232
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->q()V

    .line 239
    :goto_b
    return-void

    .line 237
    :cond_c
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->t()V

    goto :goto_b
.end method
