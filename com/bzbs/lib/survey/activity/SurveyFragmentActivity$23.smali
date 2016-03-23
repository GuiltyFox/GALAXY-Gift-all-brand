.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogEndSurvey(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$isCompletedSurvey:Z


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4596
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->val$isCompletedSurvey:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4598
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4599
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->survey_submit_success:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 4615
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->campaign_detail_nextredeemdate:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->str_nextredeemdate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5402(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4616
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_badges()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 4617
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getDataBadge()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 4626
    :goto_2a
    return-void

    .line 4621
    :cond_2b
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isRepeat:Z

    if-eqz v0, :cond_43

    .line 4622
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2a

    .line 4624
    :cond_43
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->val$isCompletedSurvey:Z

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    goto :goto_2a
.end method
