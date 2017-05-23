.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;)V
    .registers 2

    .prologue
    .line 4818
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 4821
    new-instance v7, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$style;->Theme_AppTheme:I

    invoke-direct {v7, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4822
    sget v0, Lcom/bzbs/lib/survey/R$layout;->dialog_alert_delete_continue_message:I

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4825
    sget v0, Lcom/bzbs/lib/survey/R$id;->txt_title:I

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4826
    sget v1, Lcom/bzbs/lib/survey/R$id;->txt_msg_header:I

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4827
    sget v2, Lcom/bzbs/lib/survey/R$id;->txt_msg_data:I

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4828
    sget v3, Lcom/bzbs/lib/survey/R$id;->txt_msg_footer:I

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4829
    sget v4, Lcom/bzbs/lib/survey/R$id;->btnConfirm:I

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 4830
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnCancel:I

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 4832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "        "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v9, v9, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->a:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    invoke-virtual {v6}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\n        "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->r(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v9, v9, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->a:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    invoke-virtual {v6}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4834
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue_header:I

    invoke-virtual {v8, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4835
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v8, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue:I

    invoke-virtual {v0, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4836
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4837
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue_footer:I

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4839
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;

    invoke-direct {v0, p0, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4845
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;

    invoke-direct {v0, p0, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4854
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 4855
    return-void
.end method
