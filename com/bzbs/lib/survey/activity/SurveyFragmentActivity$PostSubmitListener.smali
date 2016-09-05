.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SurveyFragmentActivity.java"


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 3175
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 3301
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3302
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 3303
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 3178
    const-string/jumbo v1, "campaign.adbuzz"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(PostSubmitListener|onComplete)response={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4f

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    :goto_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 3181
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 3182
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3185
    :cond_45
    if-eqz p3, :cond_53

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 3186
    :goto_4c
    if-nez v0, :cond_55

    .line 3297
    :cond_4e
    :goto_4e
    return-void

    .line 3178
    :cond_4f
    const-string/jumbo v0, ""

    goto :goto_21

    .line 3185
    :cond_53
    const/4 v0, 0x0

    goto :goto_4c

    .line 3189
    :cond_55
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4e
.end method
