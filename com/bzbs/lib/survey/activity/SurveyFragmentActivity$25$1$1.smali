.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;
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
    .line 4839
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 4842
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4843
    return-void
.end method
