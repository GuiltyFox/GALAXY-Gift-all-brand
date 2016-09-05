.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->s()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 479
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->a:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 491
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    .line 486
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 487
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_15
.end method
