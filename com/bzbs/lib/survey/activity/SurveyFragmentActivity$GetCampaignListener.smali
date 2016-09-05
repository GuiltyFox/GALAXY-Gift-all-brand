.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SurveyFragmentActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 4204
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 4205
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->a:Landroid/view/View;

    .line 4206
    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->b:Ljava/lang/String;

    .line 4207
    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 4247
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4248
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 4249
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4250
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 4211
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->C(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4212
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4f

    .line 4214
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4215
    new-instance v1, Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 4217
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;

    invoke-direct {v2, p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;Lcom/bzbs/lib/survey/bean/Campaign;)V

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    .line 4243
    :goto_26
    return-void

    .line 4236
    :catch_27
    move-exception v0

    .line 4237
    const-string/jumbo v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v1, "Invalid campaign data format!"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_26

    .line 4241
    :cond_4f
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v1, "Can not get campaign data!"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_26
.end method
