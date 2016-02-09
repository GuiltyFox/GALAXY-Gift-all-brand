.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1008
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onRefreshComplete()V

    .line 1010
    :cond_11
    return-void
.end method
