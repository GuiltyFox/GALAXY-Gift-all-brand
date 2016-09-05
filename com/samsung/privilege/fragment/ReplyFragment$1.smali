.class Lcom/samsung/privilege/fragment/ReplyFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ReplyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/ReplyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;I)I

    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;I)I

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->c(Lcom/samsung/privilege/fragment/ReplyFragment;I)I

    .line 150
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 152
    :goto_2f
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-ltz v0, :cond_70

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Lcom/samsung/privilege/fragment/ReplyFragment;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->c(Lcom/samsung/privilege/fragment/ReplyFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->d(Lcom/samsung/privilege/fragment/ReplyFragment;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->e(Lcom/samsung/privilege/fragment/ReplyFragment;)I

    move-result v2

    if-lt v0, v2, :cond_60

    .line 156
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z

    .line 157
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->f(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 160
    :cond_60
    return-void

    .line 150
    :cond_61
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$1;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    .line 151
    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/samsung/privilege/fragment/ReplyFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2f

    :cond_70
    move v0, v1

    .line 152
    goto :goto_36
.end method
