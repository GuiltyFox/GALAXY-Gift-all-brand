.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 924
    return-void
.end method
