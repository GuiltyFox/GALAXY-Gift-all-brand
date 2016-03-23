.class Lcom/bzbs/lib/survey/util/GPSTracker$3;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/GPSTracker;->showCustomDialogView(Landroid/app/Activity;ZLcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

.field final synthetic val$libs:Z

.field final synthetic val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/GPSTracker;Landroid/app/Activity;ZLcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/GPSTracker;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$mActivity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$libs:Z

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 200
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$mActivity:Landroid/app/Activity;

    sget v5, Lcom/bzbs/lib/survey/R$style;->ThemeDialogCustom:I

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 201
    .local v3, "dialog":Landroid/app/Dialog;
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$mActivity:Landroid/app/Activity;

    const v5, 0x103006e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 202
    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$libs:Z

    if-eqz v4, :cond_46

    .line 203
    sget v4, Lcom/bzbs/lib/survey/R$layout;->dialog_gps_original:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 208
    :goto_1a
    sget v4, Lcom/bzbs/lib/survey/R$id;->btn_yes:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 209
    .local v1, "btnYes":Landroid/widget/Button;
    sget v4, Lcom/bzbs/lib/survey/R$id;->btn_no:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    .local v0, "btnNo":Landroid/widget/Button;
    sget v4, Lcom/bzbs/lib/survey/R$id;->chk_no_show:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 212
    .local v2, "chkNoShow":Landroid/widget/CheckBox;
    new-instance v4, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;-><init>(Lcom/bzbs/lib/survey/util/GPSTracker$3;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    new-instance v4, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;-><init>(Lcom/bzbs/lib/survey/util/GPSTracker$3;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 232
    return-void

    .line 205
    .end local v0    # "btnNo":Landroid/widget/Button;
    .end local v1    # "btnYes":Landroid/widget/Button;
    .end local v2    # "chkNoShow":Landroid/widget/CheckBox;
    :cond_46
    sget v4, Lcom/bzbs/lib/survey/R$layout;->dialog_gps:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_1a
.end method
