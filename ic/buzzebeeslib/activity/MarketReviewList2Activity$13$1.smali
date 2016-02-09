.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;
    .registers 2

    .prologue
    .line 2292
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2295
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2303
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$13;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->loadMarketReview(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$34(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Z)V

    .line 2304
    return-void
.end method
