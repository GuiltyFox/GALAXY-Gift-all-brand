.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogBadgeMission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$point:I

.field final synthetic val$status:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4494
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$status:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    iput p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$point:I

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 4497
    new-instance v1, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v8, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v1, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4498
    .local v1, "dialog":Landroid/app/Dialog;
    sget v7, Lcom/bzbs/lib/survey/R$layout;->dialog_badge:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 4501
    sget v7, Lcom/bzbs/lib/survey/R$id;->txtTitle:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4502
    .local v6, "txtTitle":Landroid/widget/TextView;
    sget v7, Lcom/bzbs/lib/survey/R$id;->txtCongrats:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4503
    .local v4, "txtCongrats":Landroid/widget/TextView;
    sget v7, Lcom/bzbs/lib/survey/R$id;->txtDetailCongrats:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4504
    .local v5, "txtDetailCongrats":Landroid/widget/TextView;
    sget v7, Lcom/bzbs/lib/survey/R$id;->imgBadge:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4505
    .local v3, "imgBadge":Landroid/widget/ImageView;
    sget v7, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4507
    .local v0, "btnClose":Landroid/widget/Button;
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4508
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v8, Lcom/bzbs/lib/survey/R$string;->dialog_badge_mission_congrats:I

    invoke-virtual {v7, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4509
    const-string/jumbo v2, ""

    .line 4510
    .local v2, "htmlDetail":Ljava/lang/String;
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$status:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v8, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->BADGE:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    if-ne v7, v8, :cond_d0

    .line 4511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v9, Lcom/bzbs/lib/survey/R$string;->dialog_badge_desc:I

    invoke-virtual {v8, v9}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "{points}"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<font size=\"16\" color=\"#01bae1\"><b>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$point:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</b></font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$description:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4515
    :goto_8e
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4517
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$status:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v8, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->BADGE:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    if-ne v7, v8, :cond_106

    .line 4518
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/lib/survey/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "badges/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 4523
    :goto_c4
    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;

    invoke-direct {v7, p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4542
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 4543
    return-void

    .line 4513
    :cond_d0
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v8, Lcom/bzbs/lib/survey/R$string;->dialog_mission_desc:I

    invoke-virtual {v7, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "{points}"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "<font size=\"16\" color=\"#01bae1\"><b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$point:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "</b></font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "{survey}"

    iget-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8e

    .line 4520
    :cond_106
    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/lib/survey/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "missions/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->val$id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_c4
.end method
