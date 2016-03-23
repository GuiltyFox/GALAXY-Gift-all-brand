.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    .prologue
    .line 4818
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 4821
    new-instance v3, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v3, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4822
    .local v3, "dialog":Landroid/app/Dialog;
    sget v8, Lcom/bzbs/lib/survey/R$layout;->dialog_alert_delete_continue_message:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 4825
    sget v8, Lcom/bzbs/lib/survey/R$id;->txt_title:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4826
    .local v7, "txtTitle":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->txt_msg_header:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4827
    .local v6, "txtMsgHeader":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->txt_msg_data:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4828
    .local v4, "txtMsgData":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->txt_msg_footer:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4829
    .local v5, "txtMsgFooter":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->btnConfirm:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4830
    .local v1, "btnConfirm":Landroid/widget/Button;
    sget v8, Lcom/bzbs/lib/survey/R$id;->btnCancel:I

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4832
    .local v0, "btnCancel":Landroid/widget/Button;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "        "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v10, v10, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$finalI:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    invoke-virtual {v8}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getSerial()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n        "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget v10, v10, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$finalI:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    invoke-virtual {v8}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4834
    .local v2, "content":Ljava/lang/String;
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue_header:I

    invoke-virtual {v8, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4835
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue:I

    invoke-virtual {v8, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4836
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4837
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    iget-object v8, v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$string;->msg_alert_delete_continue_footer:I

    invoke-virtual {v8, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4839
    new-instance v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;

    invoke-direct {v8, p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4845
    new-instance v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;

    invoke-direct {v8, p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;Landroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4854
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 4855
    return-void
.end method
