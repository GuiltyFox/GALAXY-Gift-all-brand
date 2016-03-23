.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;
.super Lcom/bzbs/lib/survey/util/AddOnPermissions;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkCallPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public isGranted(Z)V
    .registers 5
    .param p1, "granted"    # Z

    .prologue
    .line 883
    invoke-super {p0, p1}, Lcom/bzbs/lib/survey/util/AddOnPermissions;->isGranted(Z)V

    .line 884
    if-eqz p1, :cond_31

    .line 886
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->endSurveyCallPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 888
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_32

    .line 893
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_31
    :goto_31
    return-void

    .line 889
    :catch_32
    move-exception v1

    goto :goto_31
.end method
