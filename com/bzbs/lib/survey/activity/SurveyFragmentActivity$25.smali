.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setDataContinue(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$finalI:I

.field final synthetic val$llContentRow:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILandroid/widget/LinearLayout;)V
    .registers 4
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4815
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$finalI:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->val$llContentRow:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4818
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4857
    return-void
.end method
