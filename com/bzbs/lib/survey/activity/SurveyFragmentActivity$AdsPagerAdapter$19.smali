.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewSurvey(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field final synthetic val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

.field final synthetic val$etFieldInputAnswer:Landroid/widget/EditText;

.field final synthetic val$index:Ljava/lang/String;

.field final synthetic val$layoutRootSurvey:Landroid/widget/LinearLayout;

.field final synthetic val$viewField:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 7
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$index:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$etFieldInputAnswer:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$viewField:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 1782
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$etFieldInputAnswer:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$viewField:Landroid/view/View;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$3000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1785
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 1786
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1787
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->val$etFieldInputAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1788
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # operator++ for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3108(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    .line 1789
    return-void
.end method
