.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;
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
    .line 1912
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1916
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->d:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1917
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1918
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$22;->e:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->B(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 1920
    return-void
.end method
