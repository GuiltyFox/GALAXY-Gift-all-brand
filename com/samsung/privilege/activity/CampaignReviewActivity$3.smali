.class Lcom/samsung/privilege/activity/CampaignReviewActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->c(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->c(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->d(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->e(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V

    .line 140
    :cond_4e
    return-void
.end method
