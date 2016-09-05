.class Lcom/samsung/privilege/activity/HistoryActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;I)I

    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->c(Lcom/samsung/privilege/activity/HistoryActivity;I)I

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->c(Lcom/samsung/privilege/activity/HistoryActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->d(Lcom/samsung/privilege/activity/HistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->e(Lcom/samsung/privilege/activity/HistoryActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->f(Lcom/samsung/privilege/activity/HistoryActivity;)I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->f(Lcom/samsung/privilege/activity/HistoryActivity;)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$3;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 148
    :cond_4e
    return-void
.end method
