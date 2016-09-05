.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 4563
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 4566
    new-instance v3, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v3, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4567
    sget v0, Lcom/bzbs/lib/survey/R$layout;->dialog_alert_message:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4570
    sget v0, Lcom/bzbs/lib/survey/R$id;->txt_title:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4571
    sget v1, Lcom/bzbs/lib/survey/R$id;->txt_msg:I

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4572
    sget v2, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4574
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4575
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4577
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;

    invoke-direct {v0, p0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4584
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 4585
    return-void
.end method
