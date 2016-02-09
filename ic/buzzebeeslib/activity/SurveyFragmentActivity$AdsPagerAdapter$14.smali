.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;
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

.field private final synthetic val$etFieldInputChoice:Landroid/widget/EditText;

.field private final synthetic val$index:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$index:Ljava/lang/String;

    iput-object p4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$etFieldInputChoice:Landroid/widget/EditText;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 956
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v1, v1, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 957
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 958
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->val$etFieldInputChoice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 959
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$20(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 961
    return-void
.end method
