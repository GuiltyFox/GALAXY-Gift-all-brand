.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 4494
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    iput p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->c:I

    iput-object p5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 4497
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4498
    sget v0, Lcom/bzbs/lib/survey/R$layout;->dialog_badge:I

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4501
    sget v0, Lcom/bzbs/lib/survey/R$id;->txtTitle:I

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4502
    sget v1, Lcom/bzbs/lib/survey/R$id;->txtCongrats:I

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4503
    sget v2, Lcom/bzbs/lib/survey/R$id;->txtDetailCongrats:I

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4504
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgBadge:I

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4505
    sget v4, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 4507
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4508
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v6, Lcom/bzbs/lib/survey/R$string;->dialog_badge_mission_congrats:I

    invoke-virtual {v0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4509
    const-string/jumbo v0, ""

    .line 4510
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v1, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    if-ne v0, v1, :cond_d0

    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v6, Lcom/bzbs/lib/survey/R$string;->dialog_badge_desc:I

    invoke-virtual {v1, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "{points}"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<font size=\"16\" color=\"#01bae1\"><b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</b></font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4515
    :goto_8e
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4517
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v1, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    if-ne v0, v1, :cond_106

    .line 4518
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/lib/survey/LibConst;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "badges/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    .line 4523
    :goto_c4
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;

    invoke-direct {v0, p0, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4542
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 4543
    return-void

    .line 4513
    :cond_d0
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$string;->dialog_mission_desc:I

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{points}"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<font size=\"16\" color=\"#01bae1\"><b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</b></font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{survey}"

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    .line 4520
    :cond_106
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/lib/survey/LibConst;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "missions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;)V

    goto :goto_c4
.end method
