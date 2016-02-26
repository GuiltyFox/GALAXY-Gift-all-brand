.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;
.super Ljava/lang/Object;
.source "MarketPlaceList2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->val$savedInstanceState:Landroid/os/Bundle;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-wide/16 v4, 0x12c

    .line 475
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 477
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_69

    .line 478
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getCache_name()Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "cache_name":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->get_all()Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z

    move-result v11

    .line 480
    .local v11, "is_all":Z
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_76

    .line 481
    if-eqz v11, :cond_70

    .line 482
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 484
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 486
    .local v12, "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 487
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterFree()V

    .line 547
    .end local v10    # "catch_market":Ljava/lang/String;
    .end local v12    # "times_sec":J
    :cond_4f
    :goto_4f
    const-string v1, "buzzebees.marketlist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gTabState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v0    # "cache_name":Ljava/lang/String;
    .end local v11    # "is_all":Z
    :cond_69
    return-void

    .line 490
    .restart local v0    # "cache_name":Ljava/lang/String;
    .restart local v10    # "catch_market":Ljava/lang/String;
    .restart local v11    # "is_all":Z
    :cond_6a
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterFree()V

    goto :goto_4f

    .line 493
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_70
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterFree()V

    goto :goto_4f

    .line 495
    :cond_76
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b8

    .line 496
    if-eqz v11, :cond_b2

    .line 497
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 498
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 499
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 501
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 502
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDraw()V

    goto :goto_4f

    .line 505
    .end local v12    # "times_sec":J
    :cond_ac
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDraw()V

    goto :goto_4f

    .line 508
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_b2
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDraw()V

    goto :goto_4f

    .line 510
    :cond_b8
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_fd

    .line 511
    if-eqz v11, :cond_f6

    .line 512
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 513
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 514
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 516
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 517
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 520
    .end local v12    # "times_sec":J
    :cond_ef
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 523
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_f6
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 525
    :cond_fd
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_142

    .line 526
    if-eqz v11, :cond_13b

    .line 527
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 528
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_134

    .line 529
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 531
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 532
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 535
    .end local v12    # "times_sec":J
    :cond_134
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 538
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_13b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 541
    :cond_142
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V

    .line 542
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/util/ArrayList;)V

    .line 545
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method
