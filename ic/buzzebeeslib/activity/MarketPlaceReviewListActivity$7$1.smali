.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 633
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$7;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->loadMarketReview(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$41(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Z)V

    .line 634
    return-void
.end method
