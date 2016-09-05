.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(ZZZ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 4339
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4343
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 4344
    return-void
.end method
