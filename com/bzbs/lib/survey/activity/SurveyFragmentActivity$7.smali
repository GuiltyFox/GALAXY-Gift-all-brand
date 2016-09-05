.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 533
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 538
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    if-ne v0, v1, :cond_81

    .line 539
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 540
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    .line 541
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 542
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_c8

    .line 551
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v1

    if-ne v1, v3, :cond_b4

    .line 553
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 555
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 596
    :cond_80
    :goto_80
    return-void

    .line 543
    :cond_81
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 544
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    .line 546
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->t:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 547
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 557
    :cond_b4
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 558
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_80

    .line 562
    :cond_c8
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->g(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z

    move-result v1

    if-ne v1, v3, :cond_16f

    .line 564
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    .line 566
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 567
    if-nez v0, :cond_13d

    .line 568
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 580
    :goto_11a
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 581
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_80

    .line 571
    :cond_13d
    add-int/lit8 v0, v0, -0x1

    .line 572
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->o:I

    add-int/2addr v0, v1

    goto :goto_11a

    .line 575
    :cond_145
    add-int/lit8 v0, v0, 0x1

    goto :goto_11a

    .line 586
    :cond_148
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 588
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->e:Ljava/lang/String;

    goto/16 :goto_80

    .line 591
    :cond_16f
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->survey_wrong_answer:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 592
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_80
.end method
