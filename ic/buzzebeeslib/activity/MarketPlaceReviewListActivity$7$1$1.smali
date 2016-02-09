.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 628
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->footerListView:Landroid/view/View;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$40(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 630
    :cond_33
    return-void
.end method
