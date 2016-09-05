.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;
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

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1481
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->d:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1483
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->h:Ljava/lang/String;

    .line 1484
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->c:Ljava/lang/String;

    const-string/jumbo v1, "call_number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1485
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$11;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPageInput;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d:Ljava/lang/String;

    .line 1487
    :cond_4e
    return-void
.end method
