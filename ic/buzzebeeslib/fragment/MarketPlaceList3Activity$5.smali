.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->val$savedInstanceState:Landroid/os/Bundle;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_7d

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getCache_name()Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v12

    .line 425
    .local v12, "cache_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->get_all()Z
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$30(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v14

    .line 426
    .local v14, "is_all":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8e

    .line 427
    if-eqz v14, :cond_86

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 429
    .local v13, "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v15

    .line 432
    .local v15, "times_sec":J
    const-wide/16 v1, 0x12c

    cmp-long v1, v15, v1

    if-lez v1, :cond_61

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    .line 493
    .end local v13    # "catch_market":Ljava/lang/String;
    .end local v15    # "times_sec":J
    :cond_61
    :goto_61
    const-string v1, "buzzebees.marketlist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gTabState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v12    # "cache_name":Ljava/lang/String;
    .end local v14    # "is_all":Z
    :cond_7d
    return-void

    .line 436
    .restart local v12    # "cache_name":Ljava/lang/String;
    .restart local v13    # "catch_market":Ljava/lang/String;
    .restart local v14    # "is_all":Z
    :cond_7e
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    goto :goto_61

    .line 439
    .end local v13    # "catch_market":Ljava/lang/String;
    :cond_86
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    goto :goto_61

    .line 441
    :cond_8e
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e0

    .line 442
    if-eqz v14, :cond_d8

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 444
    .restart local v13    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v15

    .line 447
    .restart local v15    # "times_sec":J
    const-wide/16 v1, 0x12c

    cmp-long v1, v15, v1

    if-lez v1, :cond_61

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 451
    .end local v15    # "times_sec":J
    :cond_d0
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 454
    .end local v13    # "catch_market":Ljava/lang/String;
    :cond_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 456
    :cond_e0
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_135

    .line 457
    if-eqz v14, :cond_12c

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 459
    .restart local v13    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v15

    .line 462
    .restart local v15    # "times_sec":J
    const-wide/16 v1, 0x12c

    cmp-long v1, v15, v1

    if-lez v1, :cond_61

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 466
    .end local v15    # "times_sec":J
    :cond_123
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 469
    .end local v13    # "catch_market":Ljava/lang/String;
    :cond_12c
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 471
    :cond_135
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18a

    .line 472
    if-eqz v14, :cond_181

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 474
    .restart local v13    # "catch_market":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_178

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v1, v13}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v15

    .line 477
    .restart local v15    # "times_sec":J
    const-wide/16 v1, 0x12c

    cmp-long v1, v15, v1

    if-lez v1, :cond_61

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 481
    .end local v15    # "times_sec":J
    :cond_178
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 484
    .end local v13    # "catch_market":Ljava/lang/String;
    :cond_181
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 487
    :cond_18a
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$10(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61
.end method
