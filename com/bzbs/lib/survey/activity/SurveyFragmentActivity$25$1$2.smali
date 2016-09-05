.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 4845
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4849
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4850
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V

    .line 4851
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4852
    return-void
.end method
