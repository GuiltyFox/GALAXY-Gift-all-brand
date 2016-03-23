.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 479
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 491
    :cond_15
    :goto_15
    const/4 v2, 0x0

    return v2

    .line 482
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 485
    .local v0, "IntCurrentPage":I
    const/4 v1, 0x0

    .line 486
    .local v1, "intLast":I
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    .line 487
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_15
.end method
