.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceList2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gIsAll:Z

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V
    .registers 4
    .param p2, "pIsAll"    # Z

    .prologue
    .line 867
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->gIsAll:Z

    .line 868
    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->gIsAll:Z

    .line 869
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 873
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 874
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

    .line 875
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_6e

    .line 876
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    .line 878
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->gIsAll:Z

    if-eqz v2, :cond_50

    .line 879
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getCache_name()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "cache_name":Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 881
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 889
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 890
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;)V

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$5(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/Runnable;)V

    .line 900
    const-wide/16 v6, 0x3e8

    .line 890
    invoke-virtual {v2, v4, v6, v7}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    :cond_6d
    return-void

    .line 885
    :cond_6e
    const-string v1, "Error while load campaign..."

    .line 886
    .local v1, "err_message":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->showToast(Ljava/lang/String;)V

    goto :goto_50
.end method
