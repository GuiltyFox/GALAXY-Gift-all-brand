.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 3552
    const-string/jumbo v0, "Survey Category"

    const-string/jumbo v1, "Click Yes Exit Survey Pop-Up"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3554
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3555
    return-void
.end method
