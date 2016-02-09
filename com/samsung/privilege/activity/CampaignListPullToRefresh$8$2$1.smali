.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2$1;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getLocationByGPS()V

    .line 1008
    return-void
.end method
