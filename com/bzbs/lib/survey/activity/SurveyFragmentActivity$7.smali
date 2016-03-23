.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 538
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    if-ne v4, v5, :cond_81

    .line 539
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 540
    .local v2, "d1":Ljava/util/Date;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    .line 541
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 542
    const-string/jumbo v4, "OAT"

    const-string/jumbo v5, "START"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v2    # "d1":Ljava/util/Date;
    :cond_30
    :goto_30
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-le v4, v5, :cond_c8

    .line 551
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionSubmitValid(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "alert":Ljava/lang/String;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_b4

    .line 553
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 554
    .local v1, "current":I
    add-int/lit8 v1, v1, 0x1

    .line 555
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 596
    .end local v1    # "current":I
    :cond_80
    :goto_80
    return-void

    .line 543
    .end local v0    # "alert":Ljava/lang/String;
    :cond_81
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->allPage:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v5

    if-ne v4, v5, :cond_30

    .line 544
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 545
    .local v3, "d2":Ljava/util/Date;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    .line 546
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 547
    const-string/jumbo v4, "OAT"

    const-string/jumbo v5, "END"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 557
    .end local v3    # "d2":Ljava/util/Date;
    .restart local v0    # "alert":Ljava/lang/String;
    :cond_b4
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 558
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_80

    .line 562
    .end local v0    # "alert":Ljava/lang/String;
    :cond_c8
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionSubmitValid(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "alert":Ljava/lang/String;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_16f

    .line 564
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 565
    .restart local v1    # "current":I
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_145

    .line 566
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 567
    if-nez v1, :cond_13d

    .line 568
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 569
    add-int/lit8 v1, v1, 0x1

    .line 580
    :goto_11a
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkMultiCheckBokNextPage(ILjava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 581
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_80

    .line 571
    :cond_13d
    add-int/lit8 v1, v1, -0x1

    .line 572
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    add-int/2addr v1, v4

    goto :goto_11a

    .line 575
    :cond_145
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    .line 586
    :cond_148
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 588
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    goto/16 :goto_80

    .line 591
    .end local v1    # "current":I
    :cond_16f
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 592
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_80
.end method
