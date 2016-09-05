.class Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "HistoryEWalletListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->b(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->c(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I

    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->b(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->c(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->d(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;->a:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V

    .line 143
    :cond_4e
    return-void
.end method
