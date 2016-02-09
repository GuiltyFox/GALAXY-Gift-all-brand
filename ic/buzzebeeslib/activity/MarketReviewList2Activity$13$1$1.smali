.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;->this$2:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;

    .line 2295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2297
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;->this$2:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 2298
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;->this$2:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;->this$2:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$33(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 2300
    :cond_33
    return-void
.end method
