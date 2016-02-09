.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;
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

.field private final synthetic val$index:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Lic/buzzebeeslib/bean/AdBuzzItem;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->val$index:Ljava/lang/String;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 923
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->val$index:Ljava/lang/String;

    iput-object v1, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$13;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$20(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 925
    return-void
.end method
