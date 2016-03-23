.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;
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

.field final synthetic val$index:Ljava/lang/String;

.field final synthetic val$layoutRootSurvey:Landroid/widget/LinearLayout;

.field final synthetic val$viewField:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 6
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$index:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$viewField:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$index:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->user_answer:Ljava/lang/String;

    .line 1481
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$layoutRootSurvey:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$viewField:Landroid/view/View;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurvey(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$3000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1483
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$index:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->direct_choice:Ljava/lang/String;

    .line 1484
    .local v0, "directChoice":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->type:Ljava/lang/String;

    const-string/jumbo v2, "call_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1485
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v2, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraSurveyPage:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$index:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->call_number:Ljava/lang/String;

    iput-object v1, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->endSurveyCallPhone:Ljava/lang/String;

    .line 1487
    :cond_4e
    return-void
.end method
