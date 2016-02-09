.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field private final synthetic val$layoutRootSurvey:Landroid/widget/LinearLayout;

.field private final synthetic val$viewField:Landroid/view/View;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->val$viewField:Landroid/view/View;

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1013
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$16;->val$viewField:Landroid/view/View;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1014
    const/4 v0, 0x0

    return v0
.end method
