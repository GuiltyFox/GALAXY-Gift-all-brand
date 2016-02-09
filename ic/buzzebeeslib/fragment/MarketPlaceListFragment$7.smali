.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doRefresh()V
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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1002
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 1004
    :cond_11
    return-void
.end method
