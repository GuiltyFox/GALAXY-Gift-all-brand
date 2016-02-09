.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 14
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 332
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6d

    .line 333
    add-int v2, p2, p3

    .line 346
    .local v2, "lastInScreen":I
    if-ne v2, p4, :cond_88

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v5

    if-nez v5, :cond_88

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsHasData:Z
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$21(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 348
    :try_start_2a
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;)V

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/Runnable;)V

    .line 355
    new-instance v3, Ljava/lang/Thread;

    const/4 v5, 0x0

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$23(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/Runnable;

    move-result-object v6

    const-string v7, "MagentoBackground"

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 356
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_45} :catch_6e

    .line 364
    .end local v3    # "thread":Ljava/lang/Thread;
    :goto_45
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gIsLoadingMore:Z
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 366
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$25(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/os/Parcelable;)V

    .line 371
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lic/buzzebeeslib/control/PullToRefreshGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "itemView":Landroid/view/View;
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    if-nez v1, :cond_92

    :goto_6a
    invoke-static {v5, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 382
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "lastInScreen":I
    :cond_6d
    :goto_6d
    return-void

    .line 357
    .restart local v2    # "lastInScreen":I
    :catch_6e
    move-exception v0

    .line 358
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

    goto :goto_45

    .line 361
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_88
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_45

    .line 372
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_92
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_6a

    .line 375
    .end local v1    # "itemView":Landroid/view/View;
    :cond_97
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v6

    invoke-virtual {v6}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$25(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/os/Parcelable;)V

    .line 377
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-static {v5, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$27(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 378
    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-static {v5, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 379
    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6d
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 329
    return-void
.end method
