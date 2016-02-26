.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 11

    .prologue
    .line 248
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "gListAward:onRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 254
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 256
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method
