.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CampaignListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I

    .line 205
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I

    .line 208
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 209
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->e(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 210
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v1, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)V

    .line 214
    :cond_4e
    return-void
.end method
