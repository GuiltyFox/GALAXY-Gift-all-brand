.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;
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
    .line 4629
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-boolean p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 4631
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4632
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->p()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4633
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->Q(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 4644
    :goto_10
    return-void

    .line 4637
    :cond_11
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c:Z

    if-eqz v0, :cond_29

    .line 4638
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 4640
    :cond_29
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;->a:Z

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    goto :goto_10
.end method
