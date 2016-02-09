.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 703
    return-void
.end method
