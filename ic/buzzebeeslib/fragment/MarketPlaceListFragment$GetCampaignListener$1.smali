.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 867
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 868
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 869
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 871
    :cond_25
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$4(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V

    .line 873
    :cond_2f
    return-void
.end method
