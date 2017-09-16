.class Lcom/samsung/privilege/fragment/StampListGiftFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "StampListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/StampListGiftFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/StampListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I

    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->f(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->f(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v1, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)V

    .line 201
    :cond_4e
    return-void
.end method
