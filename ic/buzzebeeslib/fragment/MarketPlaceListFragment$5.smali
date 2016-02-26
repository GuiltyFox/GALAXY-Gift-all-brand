.class Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;
.super Ljava/lang/Object;
.source "MarketPlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->val$savedInstanceState:Landroid/os/Bundle;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-wide/16 v4, 0x12c

    .line 420
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 422
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_69

    .line 423
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getCache_name()Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "cache_name":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->get_all()Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$35(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z

    move-result v11

    .line 425
    .local v11, "is_all":Z
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_76

    .line 426
    if-eqz v11, :cond_70

    .line 427
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 428
    .local v10, "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 429
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 431
    .local v12, "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 432
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterFree()V

    .line 492
    .end local v10    # "catch_market":Ljava/lang/String;
    .end local v12    # "times_sec":J
    :cond_4f
    :goto_4f
    const-string v1, "buzzebees.marketlist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gTabState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v0    # "cache_name":Ljava/lang/String;
    .end local v11    # "is_all":Z
    :cond_69
    return-void

    .line 435
    .restart local v0    # "cache_name":Ljava/lang/String;
    .restart local v10    # "catch_market":Ljava/lang/String;
    .restart local v11    # "is_all":Z
    :cond_6a
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterFree()V

    goto :goto_4f

    .line 438
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_70
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterFree()V

    goto :goto_4f

    .line 440
    :cond_76
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b8

    .line 441
    if-eqz v11, :cond_b2

    .line 442
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 443
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 444
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 446
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 447
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDraw()V

    goto :goto_4f

    .line 450
    .end local v12    # "times_sec":J
    :cond_ac
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDraw()V

    goto :goto_4f

    .line 453
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_b2
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDraw()V

    goto :goto_4f

    .line 455
    :cond_b8
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_fd

    .line 456
    if-eqz v11, :cond_f6

    .line 457
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 458
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 459
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 461
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 462
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 465
    .end local v12    # "times_sec":J
    :cond_ef
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 468
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_f6
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterDeal()V

    goto/16 :goto_4f

    .line 470
    :cond_fd
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_142

    .line 471
    if-eqz v11, :cond_13b

    .line 472
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 473
    .restart local v10    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_134

    .line 474
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v12

    .line 476
    .restart local v12    # "times_sec":J
    cmp-long v1, v12, v4

    if-lez v1, :cond_4f

    .line 477
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 480
    .end local v12    # "times_sec":J
    :cond_134
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 483
    .end local v10    # "catch_market":Ljava/lang/String;
    :cond_13b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->doFilterAll()V

    goto/16 :goto_4f

    .line 486
    :cond_142
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V

    .line 487
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V

    .line 490
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method
