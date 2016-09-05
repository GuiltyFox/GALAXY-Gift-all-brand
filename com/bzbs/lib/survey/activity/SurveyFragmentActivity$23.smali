.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V
    .registers 3

    .prologue
    .line 4596
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 4598
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4599
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->survey_submit_success:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 4615
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->campaign_detail_nextredeemdate:I

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4616
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 4617
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 4626
    :goto_2a
    return-void

    .line 4621
    :cond_2b
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c:Z

    if-eqz v0, :cond_43

    .line 4622
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2a

    .line 4624
    :cond_43
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;->a:Z

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    goto :goto_2a
.end method
