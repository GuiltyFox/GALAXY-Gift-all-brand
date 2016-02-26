.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

.field private final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->val$loadMore:Z

    .line 2509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$35(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->val$loadMore:Z

    if-nez v0, :cond_4d

    .line 2513
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$30(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$36(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;)V

    .line 2514
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$30(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$30(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 2515
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$37(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$35(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2524
    :goto_41
    return-void

    .line 2517
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$37(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_41

    .line 2520
    :cond_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$35(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->notifyDataSetChanged()V

    .line 2521
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$37(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->refreshDrawableState()V

    .line 2522
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$38(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f240000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41
.end method
