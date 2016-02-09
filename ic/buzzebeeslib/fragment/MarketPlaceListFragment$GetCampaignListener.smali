.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gIsAll:Z

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V
    .registers 4
    .param p2, "pIsAll"    # Z

    .prologue
    .line 841
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->gIsAll:Z

    .line 842
    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->gIsAll:Z

    .line 843
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 847
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 848
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCampaignListener|onComplete|response_code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | response_text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_6e

    .line 850
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    .line 852
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->gIsAll:Z

    if-eqz v2, :cond_50

    .line 853
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getCache_name()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "cache_name":Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 855
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 863
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 864
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;)V

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$5(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/Runnable;)V

    .line 874
    const-wide/16 v5, 0x3e8

    .line 864
    invoke-virtual {v2, v4, v5, v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    :cond_6d
    return-void

    .line 859
    :cond_6e
    const-string v1, "Error while load campaign..."

    .line 860
    .local v1, "err_message":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->showToast(Ljava/lang/String;)V

    goto :goto_50
.end method
