.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 348
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "gListAward:onScroll"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v1

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)J

    move-result-wide v4

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method
