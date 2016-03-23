.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;
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
    .line 4629
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->val$isCompletedSurvey:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4631
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4632
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_badges()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4633
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getDataBadge()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 4644
    :goto_10
    return-void

    .line 4637
    :cond_11
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isRepeat:Z

    if-eqz v0, :cond_29

    .line 4638
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 4640
    :cond_29
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->val$isCompletedSurvey:Z

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    goto :goto_10
.end method
