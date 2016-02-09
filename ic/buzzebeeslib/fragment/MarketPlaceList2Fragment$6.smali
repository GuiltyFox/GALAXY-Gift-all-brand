.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 332
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_109

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_109

    .line 333
    add-int v4, p2, p3

    .line 343
    .local v4, "lastInScreen":I
    if-ne v4, p4, :cond_125

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v7

    if-nez v7, :cond_125

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 345
    :try_start_28
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v8, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)V

    invoke-static {v7, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/Runnable;)V

    .line 352
    new-instance v6, Ljava/lang/Thread;

    const/4 v7, 0x0

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$21(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/Runnable;

    move-result-object v8

    const-string v9, "MagentoBackground"

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 353
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_43} :catch_10a

    .line 361
    .end local v6    # "thread":Ljava/lang/Thread;
    :goto_43
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v7

    if-eqz v7, :cond_137

    .line 363
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v8

    invoke-virtual {v8}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$23(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/os/Parcelable;)V

    .line 367
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lic/buzzebeeslib/control/PullToRefreshGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 368
    .local v3, "itemView":Landroid/view/View;
    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    if-nez v3, :cond_131

    const/4 v7, 0x0

    :goto_6a
    invoke-static {v8, v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 378
    .end local v3    # "itemView":Landroid/view/View;
    :goto_6d
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 379
    .local v0, "currentFirstVisPos":I
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->myLastVisiblePos:I
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v7

    if-ge v0, v7, :cond_bb

    .line 382
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$27(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v7

    if-nez v7, :cond_bb

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_bb

    .line 383
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->inFromBottomAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$29()Landroid/view/animation/Animation;

    move-result-object v2

    .line 384
    .local v2, "inFromBottom":Landroid/view/animation/Animation;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 385
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 386
    const-wide/16 v7, 0x1f4

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 390
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    new-instance v7, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    .end local v2    # "inFromBottom":Landroid/view/animation/Animation;
    :cond_bb
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->myLastVisiblePos:I
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v7

    if-le v0, v7, :cond_104

    .line 413
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$27(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v7

    if-nez v7, :cond_104

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_104

    .line 414
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->outToBottomAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$31()Landroid/view/animation/Animation;

    move-result-object v5

    .line 415
    .local v5, "outToBottom":Landroid/view/animation/Animation;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 416
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 417
    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 419
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    new-instance v7, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$3;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;)V

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 441
    .end local v5    # "outToBottom":Landroid/view/animation/Animation;
    :cond_104
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-static {v7, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 443
    .end local v0    # "currentFirstVisPos":I
    .end local v4    # "lastInScreen":I
    :cond_109
    return-void

    .line 354
    .restart local v4    # "lastInScreen":I
    :catch_10a
    move-exception v1

    .line 355
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "buzzebees.markets"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error While Load More Wall Stream...:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    .line 358
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_125
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_43

    .line 368
    .restart local v3    # "itemView":Landroid/view/View;
    :cond_131
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    goto/16 :goto_6a

    .line 371
    .end local v3    # "itemView":Landroid/view/View;
    :cond_137
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v8

    invoke-virtual {v8}, Lic/buzzebeeslib/control/PullToRefreshGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$23(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/os/Parcelable;)V

    .line 373
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$25(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 374
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 375
    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6d
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 329
    return-void
.end method
