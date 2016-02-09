.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 441
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V

    .line 442
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurveyKeyboard(I)V

    .line 443
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->val$adapter:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I
    invoke-static {v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionBackClear(I)Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 445
    .local v0, "current":I
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(I)V

    .line 446
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v1, v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    return-void
.end method
