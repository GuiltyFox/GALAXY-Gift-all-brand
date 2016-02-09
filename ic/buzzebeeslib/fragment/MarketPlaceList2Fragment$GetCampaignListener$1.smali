.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 893
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 894
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 895
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onRefreshComplete()V

    .line 897
    :cond_25
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$4(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V

    .line 899
    :cond_2f
    return-void
.end method
