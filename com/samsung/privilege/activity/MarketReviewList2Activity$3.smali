.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 12
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 366
    add-int v1, p2, p3

    .line 367
    .local v1, "lastInScreen":I
    if-ne v1, p4, :cond_24

    .line 369
    :try_start_4
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$15(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gIsHaveMoreData:Z
    invoke-static {v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$16(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 370
    new-instance v2, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;)V

    .line 384
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MagentoBackground"

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 385
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 392
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_24
    :goto_24
    return-void

    .line 387
    :catch_25
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "buzzebees.MarketReview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error While Load More Wall Stream...:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 363
    return-void
.end method
