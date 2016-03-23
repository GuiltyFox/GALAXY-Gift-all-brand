.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$2"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    .prologue
    .line 4845
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$finalI:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4849
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$llContentRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4850
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$llContentRow:Landroid/widget/LinearLayout;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setDataContinue(Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V

    .line 4851
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4852
    return-void
.end method
