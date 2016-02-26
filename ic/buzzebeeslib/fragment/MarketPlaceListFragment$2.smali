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
    .registers 23
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    if-eqz v11, :cond_85

    .line 272
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v8

    .line 273
    .local v8, "lgPoints":J
    const-wide/16 v12, 0x3e8

    cmp-long v11, v8, v12

    if-gtz v11, :cond_17d

    .line 274
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    if-eqz v11, :cond_85

    .line 275
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 276
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J

    move-result-wide v14

    const-wide/16 v16, 0x7d0

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_85

    .line 277
    const/4 v11, 0x2

    move/from16 v0, p2

    if-gt v0, v11, :cond_13c

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_85

    .line 279
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->inFromTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$21()Landroid/view/animation/Animation;

    move-result-object v4

    .line 280
    .local v4, "inFromTop":Landroid/view/animation/Animation;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 281
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 282
    const-wide/16 v12, 0x1f4

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    new-instance v11, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-virtual {v4, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;J)V

    .line 348
    .end local v2    # "date":Ljava/util/Date;
    .end local v4    # "inFromTop":Landroid/view/animation/Animation;
    .end local v8    # "lgPoints":J
    :cond_85
    :goto_85
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_13b

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_13b

    .line 349
    add-int v6, p2, p3

    .line 351
    .local v6, "lastInScreen":I
    const/16 v11, 0x19

    move/from16 v0, p4

    if-le v0, v11, :cond_fe

    move/from16 v0, p4

    if-ne v6, v0, :cond_fe

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$24(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v11

    if-nez v11, :cond_fe

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$25(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 353
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v12, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$26(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/Runnable;)V

    .line 360
    new-instance v10, Ljava/lang/Thread;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$27(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/Runnable;

    move-result-object v12

    const-string v13, "MagentoBackground"

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 361
    .local v10, "thread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v11

    invoke-virtual {v11}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v11

    if-nez v11, :cond_fe

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;

    move-result-object v11

    sget v12, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_fe} :catch_18c

    .line 371
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v12

    invoke-virtual {v12}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$29(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/os/Parcelable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v12

    invoke-virtual {v12}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v12

    invoke-static {v11, v12}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 376
    .local v5, "itemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    if-nez v5, :cond_1a7

    const/4 v11, 0x0

    :goto_138
    invoke-static {v12, v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 378
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "lastInScreen":I
    :cond_13b
    return-void

    .line 309
    .restart local v2    # "date":Ljava/util/Date;
    .restart local v8    # "lgPoints":J
    :cond_13c
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_85

    .line 310
    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->outToTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$23()Landroid/view/animation/Animation;

    move-result-object v7

    .line 311
    .local v7, "outToTop":Landroid/view/animation/Animation;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 312
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 313
    const-wide/16 v12, 0x1f4

    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    new-instance v11, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;)V

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$22(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;J)V

    goto/16 :goto_85

    .line 343
    .end local v2    # "date":Ljava/util/Date;
    .end local v7    # "outToTop":Landroid/view/animation/Animation;
    :cond_17d
    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_85

    .line 365
    .end local v8    # "lgPoints":J
    .restart local v6    # "lastInScreen":I
    :catch_18c
    move-exception v3

    .line 366
    .local v3, "ex":Ljava/lang/Exception;
    const-string v11, "buzzebees.markets"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error While Load More Wall Stream...:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fe

    .line 376
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "itemView":Landroid/view/View;
    :cond_1a7
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_138
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 268
    return-void
.end method
