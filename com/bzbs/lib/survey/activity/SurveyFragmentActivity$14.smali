.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 3545
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3547
    const-string/jumbo v0, "Survey Category"

    const-string/jumbo v1, "Click No Exit Survey Pop-Up"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->Name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->setFormatPie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3549
    return-void
.end method
