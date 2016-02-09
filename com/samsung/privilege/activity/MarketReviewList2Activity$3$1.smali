.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;)Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->loadMarketReview(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$18(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V

    .line 382
    return-void
.end method
