.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 903
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 904
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 905
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onRefreshComplete()V

    .line 907
    :cond_25
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$4(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V

    .line 909
    :cond_2f
    return-void
.end method
