.class Lcom/samsung/privilege/activity/CampaignDetailActivity$31;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

.field private final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->val$loadMore:Z

    .line 3357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$53(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->val$loadMore:Z

    if-nez v0, :cond_4d

    .line 3361
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$54(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;)V

    .line 3362
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 3363
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$53(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3372
    :goto_41
    return-void

    .line 3365
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_41

    .line 3368
    :cond_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$53(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->notifyDataSetChanged()V

    .line 3369
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->refreshDrawableState()V

    .line 3370
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$55(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f240000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41
.end method
