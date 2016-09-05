.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V
    .registers 3

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 487
    if-lez v0, :cond_2e

    .line 488
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(I)I

    .line 490
    invoke-static {}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_2e

    .line 491
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V

    .line 492
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->requestLayout()V

    .line 496
    :cond_2e
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 497
    return-void
.end method
