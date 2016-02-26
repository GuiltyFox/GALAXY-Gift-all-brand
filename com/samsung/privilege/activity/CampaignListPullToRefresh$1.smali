.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$7(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gListAward:onRefresh"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$17(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$1(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/util/ArrayList;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$18(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$11(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$12(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V

    .line 268
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$19(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$16(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;)V

    .line 269
    return-void
.end method
