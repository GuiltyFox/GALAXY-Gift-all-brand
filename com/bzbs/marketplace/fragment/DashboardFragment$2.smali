.class Lcom/bzbs/marketplace/fragment/DashboardFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/DashboardFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 108
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_9

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_37

    :cond_9
    move v0, v1

    .line 87
    :goto_a
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v3, v2, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-ltz v0, :cond_40

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 89
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 90
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget-object v3, v3, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 91
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iget v1, v1, Lcom/bzbs/marketplace/fragment/DashboardFragment;->g:I

    if-le p3, v1, :cond_2b

    .line 96
    :cond_2b
    if-ltz v0, :cond_2d

    .line 101
    :cond_2d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Lcom/bzbs/marketplace/fragment/DashboardFragment;I)I

    .line 102
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;->a:Lcom/bzbs/marketplace/fragment/DashboardFragment;

    iput p3, v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->g:I

    .line 103
    return-void

    .line 86
    :cond_37
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_a

    :cond_40
    move v2, v1

    .line 87
    goto :goto_11
.end method
