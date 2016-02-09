.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$6(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 541
    return-void
.end method
