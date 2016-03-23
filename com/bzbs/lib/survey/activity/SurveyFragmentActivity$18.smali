.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$strLink:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4188
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$strLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 4191
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v5, Lcom/bzbs/lib/survey/R$string;->please_wait:I

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3402(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 4192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&format=json&type=full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4193
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DETAIL:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    const/4 v1, 0x0

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;->val$strLink:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 4195
    return-void
.end method
