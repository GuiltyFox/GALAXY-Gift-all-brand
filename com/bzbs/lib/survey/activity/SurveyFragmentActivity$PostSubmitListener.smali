.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostSubmitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 3175
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

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
    .line 3301
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3302
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 3303
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 3178
    const-string/jumbo v2, "campaign.adbuzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(PostSubmitListener|onComplete)response={"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_4f

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 3181
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3182
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3185
    :cond_45
    if-eqz p3, :cond_53

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 3186
    .local v0, "response_text":Ljava/lang/String;
    :goto_4c
    if-nez v0, :cond_55

    .line 3297
    .end local v0    # "response_text":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void

    .line 3178
    :cond_4f
    const-string/jumbo v1, ""

    goto :goto_21

    .line 3185
    :cond_53
    const/4 v0, 0x0

    goto :goto_4c

    .line 3189
    .restart local v0    # "response_text":Ljava/lang/String;
    :cond_55
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4e
.end method
