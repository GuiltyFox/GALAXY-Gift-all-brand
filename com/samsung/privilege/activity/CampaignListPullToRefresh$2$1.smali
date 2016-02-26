.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$7(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gListAward:onScroll"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$19(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$16(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;)V

    .line 292
    return-void
.end method
