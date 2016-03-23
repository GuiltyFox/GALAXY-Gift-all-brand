.class Lcom/samsung/privilege/activity/CampaignReviewActivity$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->bindingEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$200(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    # setter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->visibleItemCount:I
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$102(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 131
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$200(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    # setter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->totalItemCount:I
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$302(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I

    .line 134
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$400(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->out_of_data:Z
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$500(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 135
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->visibleItemCount:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$100(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->pastVisiblesItems:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$600(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->totalItemCount:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$300(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v2

    if-lt v1, v2, :cond_4e

    .line 136
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->totalItemCount:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$300(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I

    move-result v0

    .line 137
    .local v0, "skip":I
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignReviewActivity;->loadCampaignReview(I)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$000(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V

    .line 140
    .end local v0    # "skip":I
    :cond_4e
    return-void
.end method
