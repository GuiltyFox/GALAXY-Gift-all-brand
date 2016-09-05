.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;
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

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Lcom/bzbs/lib/survey/bean/AdBuzzItem;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->d:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->e:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 1785
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->a:Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;->i:Ljava/lang/String;

    .line 1786
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1787
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1788
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$19;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->A(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I

    .line 1789
    return-void
.end method
