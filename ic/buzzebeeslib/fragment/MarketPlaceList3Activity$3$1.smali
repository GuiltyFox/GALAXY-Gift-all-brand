.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 354
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "gListAward:onScroll"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v6

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v8

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-result-object v9

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "onScroll"

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
