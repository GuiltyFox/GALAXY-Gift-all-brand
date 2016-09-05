.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Landroid/widget/LinearLayout;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILandroid/widget/LinearLayout;)V
    .registers 4

    .prologue
    .line 4815
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->a:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

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
