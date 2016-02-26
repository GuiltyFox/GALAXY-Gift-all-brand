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

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->booleanCancelRunnable:Z
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$3(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v2, :cond_7d

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getCache_name()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, "cache_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->get_all()Z
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$31(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Z

    move-result v15

    .line 434
    .local v15, "is_all":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8e

    .line 435
    if-eqz v15, :cond_86

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 437
    .local v14, "catch_market":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, v14}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v16

    .line 440
    .local v16, "times_sec":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v16, v2

    if-lez v2, :cond_61

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    .line 501
    .end local v14    # "catch_market":Ljava/lang/String;
    .end local v16    # "times_sec":J
    :cond_61
    :goto_61
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gTabState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v13    # "cache_name":Ljava/lang/String;
    .end local v15    # "is_all":Z
    :cond_7d
    return-void

    .line 444
    .restart local v13    # "cache_name":Ljava/lang/String;
    .restart local v14    # "catch_market":Ljava/lang/String;
    .restart local v15    # "is_all":Z
    :cond_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    goto :goto_61

    .line 447
    .end local v14    # "catch_market":Ljava/lang/String;
    :cond_86
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterFree()V

    goto :goto_61

    .line 449
    :cond_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e0

    .line 450
    if-eqz v15, :cond_d8

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 452
    .restart local v14    # "catch_market":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, v14}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v16

    .line 455
    .restart local v16    # "times_sec":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v16, v2

    if-lez v2, :cond_61

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 459
    .end local v16    # "times_sec":J
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 462
    .end local v14    # "catch_market":Ljava/lang/String;
    :cond_d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDraw()V

    goto :goto_61

    .line 464
    :cond_e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_135

    .line 465
    if-eqz v15, :cond_12c

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 467
    .restart local v14    # "catch_market":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_123

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, v14}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v16

    .line 470
    .restart local v16    # "times_sec":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v16, v2

    if-lez v2, :cond_61

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 474
    .end local v16    # "times_sec":J
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 477
    .end local v14    # "catch_market":Ljava/lang/String;
    :cond_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterDeal()V

    goto/16 :goto_61

    .line 479
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gTabState:I
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$32(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18a

    .line 480
    if-eqz v15, :cond_181

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 482
    .restart local v14    # "catch_market":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_178

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, v14}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v16

    .line 485
    .restart local v16    # "times_sec":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v16, v2

    if-lez v2, :cond_61

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 489
    .end local v16    # "times_sec":J
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 492
    .end local v14    # "catch_market":Ljava/lang/String;
    :cond_181
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->doFilterAll()V

    goto/16 :goto_61

    .line 495
    :cond_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$11(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$12(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterTextSearch:Ljava/lang/String;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$13(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$14(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPoints:J
    invoke-static {v6}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$15(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v8}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$16(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v9}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$17(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterSponsor:Ljava/lang/String;
    invoke-static {v10}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$18(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gCurrentFilterPlace:Ljava/lang/String;
    invoke-static {v11}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$19(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v12}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$20(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61
.end method
