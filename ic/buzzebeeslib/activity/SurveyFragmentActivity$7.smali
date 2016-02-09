.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

.field private final synthetic val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 398
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-le v2, v3, :cond_63

    .line 399
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionSubmitValid(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "alert":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$39(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 401
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 402
    .local v1, "current":I
    add-int/lit8 v1, v1, 0x1

    .line 403
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(I)V

    .line 434
    .end local v1    # "current":I
    :cond_4e
    :goto_4e
    return-void

    .line 405
    :cond_4f
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    sget v3, Lic/buzzebeeslib/R$string;->survey_wrong_answer:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 406
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_4e

    .line 410
    .end local v0    # "alert":Ljava/lang/String;
    :cond_63
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionSubmitValid(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .restart local v0    # "alert":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->chkSubmit:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$39(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 412
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 413
    .restart local v1    # "current":I
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 414
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 415
    if-nez v1, :cond_d8

    .line 416
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 425
    :goto_b2
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(I)V

    .line 427
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const-string v3, ""

    iput-object v3, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    goto/16 :goto_4e

    .line 419
    :cond_d8
    add-int/lit8 v1, v1, -0x1

    .line 420
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->contentCount:I

    add-int/2addr v1, v2

    .line 422
    goto :goto_b2

    .line 423
    :cond_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 429
    .end local v1    # "current":I
    :cond_e3
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    sget v3, Lic/buzzebeeslib/R$string;->survey_wrong_answer:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 430
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_4e
.end method
