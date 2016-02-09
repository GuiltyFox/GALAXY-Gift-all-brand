.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

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

    .line 281
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$20(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$20(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7b

    .line 282
    add-int v2, p2, p3

    .line 283
    .local v2, "lastInScreen":I
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$21(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v5

    if-le p4, v5, :cond_4c

    if-ne v2, p4, :cond_4c

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$22(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z

    move-result v5

    if-nez v5, :cond_4c

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$3(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 285
    :try_start_31
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    new-instance v6, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;)V

    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$23(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/Runnable;)V

    .line 292
    new-instance v3, Ljava/lang/Thread;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$24(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/Runnable;

    move-result-object v6

    const-string v7, "MagentoBackground"

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 293
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_7c

    .line 300
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_4c
    :goto_4c
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$25(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Parcelable;)V

    .line 302
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$26(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V

    .line 304
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 305
    .local v1, "itemView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    if-nez v1, :cond_96

    :goto_78
    invoke-static {v5, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$27(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V

    .line 307
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "lastInScreen":I
    :cond_7b
    return-void

    .line 294
    .restart local v2    # "lastInScreen":I
    :catch_7c
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "buzzebees.marketlist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error While Load More Campaign...:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 305
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_96
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_78
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 273
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$8(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 278
    :goto_d
    return-void

    .line 276
    :cond_e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$8(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
