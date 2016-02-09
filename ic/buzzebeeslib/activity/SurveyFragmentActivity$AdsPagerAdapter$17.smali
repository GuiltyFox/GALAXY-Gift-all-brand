.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

.field private final synthetic val$etFieldInputAnswer:Landroid/widget/EditText;

.field private final synthetic val$index:Ljava/lang/String;

.field private final synthetic val$layoutRootSurvey:Landroid/widget/LinearLayout;

.field private final synthetic val$viewField:Landroid/view/View;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$index:Ljava/lang/String;

    iput-object p4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$etFieldInputAnswer:Landroid/widget/EditText;

    iput-object p5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$viewField:Landroid/view/View;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1024
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v1, v1, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 1026
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$etFieldInputAnswer:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$viewField:Landroid/view/View;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1029
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v1, v1, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 1030
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1031
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->val$etFieldInputAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1032
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$17;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$20(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 1033
    return-void
.end method
