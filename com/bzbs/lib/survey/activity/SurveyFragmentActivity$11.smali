.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->d(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3307
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3312
    return-void
.end method
