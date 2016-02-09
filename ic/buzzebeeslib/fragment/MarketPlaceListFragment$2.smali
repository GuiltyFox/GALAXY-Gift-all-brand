.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 21
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_84

    .line 272
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v6

    .line 273
    .local v6, "lgPoints":J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-gtz v10, :cond_17c

    .line 274
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    if-eqz v10, :cond_84

    .line 275
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 276
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J
    invoke-static {v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J

    move-result-wide v12

    const-wide/16 v14, 0x7d0

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-lez v10, :cond_84

    .line 277
    const/4 v10, 0x2

    move/from16 v0, p2

    if-gt v0, v10, :cond_13b

    .line 278
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_84

    .line 279
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->inFromTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$21()Landroid/view/animation/Animation;

    move-result-object v3

    .line 280
    .local v3, "inFromTop":Landroid/view/animation/Animation;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 281
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 282
    const-wide/16 v10, 0x1f4

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    new-instance v10, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-virtual {v3, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;J)V

    .line 348
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "inFromTop":Landroid/view/animation/Animation;
    .end local v6    # "lgPoints":J
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_13a

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_13a

    .line 349
    add-int v5, p2, p3

    .line 351
    .local v5, "lastInScreen":I
    const/16 v10, 0x19

    move/from16 v0, p4

    if-le v0, v10, :cond_fd

    move/from16 v0, p4

    if-ne v5, v0, :cond_fd

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v10

    if-nez v10, :cond_fd

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$25(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 353
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v11, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-static {v10, v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/Runnable;)V

    .line 360
    new-instance v9, Ljava/lang/Thread;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$27(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/Runnable;

    move-result-object v11

    const-string v12, "MagentoBackground"

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 361
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 362
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v10

    invoke-virtual {v10}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v10

    if-nez v10, :cond_fd

    .line 363
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_fd} :catch_18b

    .line 371
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_fd
    :goto_fd
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v11

    invoke-virtual {v11}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$29(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/os/Parcelable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v11

    invoke-virtual {v11}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 376
    .local v4, "itemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    if-nez v4, :cond_1a6

    const/4 v10, 0x0

    :goto_137
    invoke-static {v11, v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 378
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "lastInScreen":I
    :cond_13a
    return-void

    .line 309
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v6    # "lgPoints":J
    :cond_13b
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_84

    .line 310
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->outToTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$23()Landroid/view/animation/Animation;

    move-result-object v8

    .line 311
    .local v8, "outToTop":Landroid/view/animation/Animation;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 312
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 313
    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    new-instance v10, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;J)V

    goto/16 :goto_84

    .line 343
    .end local v1    # "date":Ljava/util/Date;
    .end local v8    # "outToTop":Landroid/view/animation/Animation;
    :cond_17c
    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_84

    .line 365
    .end local v6    # "lgPoints":J
    .restart local v5    # "lastInScreen":I
    :catch_18b
    move-exception v2

    .line 366
    .local v2, "ex":Ljava/lang/Exception;
    const-string v10, "buzzebees.markets"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error While Load More Wall Stream...:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fd

    .line 376
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "itemView":Landroid/view/View;
    :cond_1a6
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_137
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 268
    return-void
.end method
