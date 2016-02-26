.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
            "<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<Landroid/widget/GridView;>;"
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onPullDownToRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 308
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/util/ArrayList;)V

    .line 310
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)J

    move-result-wide v4

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
            "<",
            "Landroid/widget/GridView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<Landroid/widget/GridView;>;"
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onPullUpToRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method
