.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field strLink:Ljava/lang/String;

.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "strLink"    # Ljava/lang/String;

    .prologue
    .line 4204
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 4205
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->v:Landroid/view/View;

    .line 4206
    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->strLink:Ljava/lang/String;

    .line 4207
    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 4247
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4248
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 4249
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4250
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 4211
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4212
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_4f

    .line 4214
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4215
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {v0, v2}, Lcom/bzbs/lib/survey/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 4217
    .local v0, "campaign":Lcom/bzbs/lib/survey/bean/Campaign;
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;

    invoke-direct {v4, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;Lcom/bzbs/lib/survey/bean/Campaign;)V

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    .line 4243
    .end local v0    # "campaign":Lcom/bzbs/lib/survey/bean/Campaign;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_26
    return-void

    .line 4236
    :catch_27
    move-exception v1

    .line 4237
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "Invalid campaign data format!"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_26

    .line 4241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4f
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v4, "Can not get campaign data!"

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto :goto_26
.end method
