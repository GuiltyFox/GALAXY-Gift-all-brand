.class Lcom/samsung/privilege/fragment/RequestHelpFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RequestHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I

    .line 194
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 196
    :goto_2f
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-ltz v0, :cond_70

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->f(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I

    move-result v2

    if-lt v0, v2, :cond_60

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z

    .line 201
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    .line 204
    :cond_60
    return-void

    .line 194
    :cond_61
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .line 195
    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2f

    :cond_70
    move v0, v1

    .line 196
    goto :goto_36
.end method
