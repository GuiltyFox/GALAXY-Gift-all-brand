.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 375
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I

    .line 356
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->f(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->f(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I

    .line 359
    if-eqz p1, :cond_34

    .line 360
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_80

    :cond_34
    move v0, v1

    .line 361
    :goto_35
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-ltz v0, :cond_89

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->g(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 364
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->h(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->i(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I

    move-result v2

    if-lt v0, v2, :cond_7f

    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)Z

    .line 366
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->rootFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    :cond_6e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->g(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->e(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;ZLjava/lang/String;)V

    .line 370
    :cond_7f
    return-void

    .line 360
    :cond_80
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_35

    :cond_89
    move v0, v1

    .line 361
    goto :goto_3c
.end method
