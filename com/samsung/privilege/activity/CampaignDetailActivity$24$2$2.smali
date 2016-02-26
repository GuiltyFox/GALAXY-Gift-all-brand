.class Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2$2;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2$2;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;

    .line 3209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2$2;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$24;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$24$2;)Lcom/samsung/privilege/activity/CampaignDetailActivity$24;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$24;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 3213
    return-void
.end method
