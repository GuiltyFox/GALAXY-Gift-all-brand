.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4563
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4566
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4567
    .local v1, "dialog":Landroid/app/Dialog;
    sget v4, Lcom/bzbs/lib/survey/R$layout;->dialog_alert_message:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 4570
    sget v4, Lcom/bzbs/lib/survey/R$id;->txt_title:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4571
    .local v3, "txtTitle":Landroid/widget/TextView;
    sget v4, Lcom/bzbs/lib/survey/R$id;->txt_msg:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4572
    .local v2, "txtMessage":Landroid/widget/TextView;
    sget v4, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4574
    .local v0, "btnClose":Landroid/widget/Button;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->val$title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4575
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4577
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;

    invoke-direct {v4, p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4584
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 4585
    return-void
.end method
