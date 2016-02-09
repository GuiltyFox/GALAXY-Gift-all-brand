.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field private final synthetic val$etFieldInputRate:Landroid/widget/TextView;

.field private final synthetic val$etFieldInputRateValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/widget/TextView;Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/widget/TextView;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$etFieldInputRate:Landroid/widget/TextView;

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iput-object p4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$etFieldInputRateValue:Landroid/widget/TextView;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 884
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$etFieldInputRate:Landroid/widget/TextView;

    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->caption:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$etFieldInputRateValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->val$adBuzzItem:Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v0, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignExtraSurveyPageInput;->index:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 879
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 874
    return-void
.end method
