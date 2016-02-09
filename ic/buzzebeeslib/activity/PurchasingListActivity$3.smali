.class Lic/buzzebeeslib/activity/PurchasingListActivity$3;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 13
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 430
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_95

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gArrayListPurchasing:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$25(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_95

    .line 431
    add-int v2, p2, p3

    .line 433
    .local v2, "lastInScreen":I
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget v5, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->gListPerPage:I

    if-le p4, v5, :cond_66

    if-ne v2, p4, :cond_66

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsLoadingMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$35(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z

    move-result v5

    if-nez v5, :cond_66

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasData:Z
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$6(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 436
    :try_start_2f
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v6, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)V

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$36(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/Runnable;)V

    .line 444
    new-instance v3, Ljava/lang/Thread;

    const/4 v5, 0x0

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$37(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/Runnable;

    move-result-object v6

    const-string v7, "MagentoBackground"

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 445
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 447
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v5

    if-nez v5, :cond_66

    .line 448
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_66} :catch_96

    .line 457
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_66
    :goto_66
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$38(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/os/Parcelable;)V

    .line 459
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$39(Lic/buzzebeeslib/activity/PurchasingListActivity;I)V

    .line 461
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "itemView":Landroid/view/View;
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    if-nez v1, :cond_b0

    :goto_92
    invoke-static {v5, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$40(Lic/buzzebeeslib/activity/PurchasingListActivity;I)V

    .line 464
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "lastInScreen":I
    :cond_95
    return-void

    .line 451
    .restart local v2    # "lastInScreen":I
    :catch_96
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "buzzebees.markets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error While Load More Wall Stream...:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 462
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_b0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_92
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 422
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 423
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 427
    :goto_d
    return-void

    .line 425
    :cond_e
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$27(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
