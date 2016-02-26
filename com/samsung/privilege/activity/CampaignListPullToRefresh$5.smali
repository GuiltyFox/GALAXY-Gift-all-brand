.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->ProcessJsonCampaign(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

.field private final synthetic val$count_item:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->val$count_item:I

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 746
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->val$count_item:I

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$21(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 748
    :try_start_a
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->footerListView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$34(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    .line 761
    :cond_19
    :goto_19
    return-void

    .line 749
    :catch_1a
    move-exception v1

    .line 750
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "buzzebees.marketlist.fragment"

    const-string v3, "Error while gListAward.removeFooterView(footerListView);"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 754
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_19

    .line 755
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->footerListView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$34(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_3f

    goto :goto_19

    .line 757
    :catch_3f
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "buzzebees.marketlist.fragment"

    const-string v3, "Error while gListAward.addFooterView(footerListView);"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
