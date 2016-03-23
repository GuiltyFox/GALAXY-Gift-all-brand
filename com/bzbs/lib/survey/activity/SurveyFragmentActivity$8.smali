.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;
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
    .line 599
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    :try_start_0
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkMultiCheckBokNextPage(ILjava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 605
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    :goto_1d
    return-void

    .line 610
    :cond_1e
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v3, 0x1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z

    .line 611
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurveyKeyboard(I)V

    .line 612
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionBackClear(I)Ljava/lang/String;

    .line 613
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    .local v0, "current":I
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 615
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_1d

    .line 616
    .end local v0    # "current":I
    :catch_8f
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
