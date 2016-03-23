.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;

    .prologue
    .line 4577
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4582
    return-void
.end method
