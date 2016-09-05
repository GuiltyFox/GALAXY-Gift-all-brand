.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;
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
    .line 599
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 605
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    :goto_1d
    return-void

    .line 610
    :cond_1e
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 611
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->e(I)V

    .line 612
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->b(I)Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 615
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_1d

    .line 616
    :catch_8f
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
