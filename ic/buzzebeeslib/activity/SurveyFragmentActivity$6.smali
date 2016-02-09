.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 358
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v0

    .line 359
    .local v0, "IntCurrentPage":I
    const/4 v1, 0x0

    .line 360
    .local v1, "intLast":I
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_4f

    .line 361
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 365
    .end local v0    # "IntCurrentPage":I
    .end local v1    # "intLast":I
    :cond_4f
    const/4 v2, 0x0

    return v2
.end method
