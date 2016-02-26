.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 356
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "gListAward:onScroll"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v1

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method
