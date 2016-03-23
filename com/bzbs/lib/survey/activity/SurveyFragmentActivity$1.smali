.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 330
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    const-string/jumbo v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 333
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setRequestedOrientation(I)V

    .line 339
    :goto_29
    return-void

    .line 334
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Orientation:Ljava/lang/String;

    const-string/jumbo v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 335
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setRequestedOrientation(I)V

    goto :goto_29

    .line 337
    :cond_54
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setRequestedOrientation(I)V

    goto :goto_29
.end method
