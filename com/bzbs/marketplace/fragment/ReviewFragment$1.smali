.class Lcom/bzbs/marketplace/fragment/ReviewFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I

    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I

    .line 191
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->c(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I

    .line 193
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 195
    :goto_2f
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-ltz v0, :cond_70

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 198
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->c(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->d(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->e(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I

    move-result v2

    if-lt v0, v2, :cond_60

    .line 199
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z

    .line 200
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->f(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 203
    :cond_60
    return-void

    .line 193
    :cond_61
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .line 194
    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2f

    :cond_70
    move v0, v1

    .line 195
    goto :goto_36
.end method
