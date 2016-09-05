.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/CheckBox;)V
    .registers 5

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->d:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1636
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->d:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    .line 1637
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    if-nez v0, :cond_39

    const-string/jumbo v0, "-11"

    .line 1639
    :goto_28
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1640
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->d:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    .line 1644
    :goto_38
    return-void

    .line 1637
    :cond_39
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    goto :goto_28

    .line 1642
    :cond_4e
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$14;->d:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z

    goto :goto_38
.end method
