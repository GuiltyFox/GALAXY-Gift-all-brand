.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    .prologue
    .line 4523
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4528
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$status:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v1, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->BADGE:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    if-ne v0, v1, :cond_1f

    .line 4529
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_mission()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4530
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getDataMission()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 4540
    :goto_1e
    return-void

    .line 4535
    :cond_1f
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isRepeat:Z

    if-eqz v0, :cond_3d

    .line 4536
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1e

    .line 4538
    :cond_3d
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    goto :goto_1e
.end method
