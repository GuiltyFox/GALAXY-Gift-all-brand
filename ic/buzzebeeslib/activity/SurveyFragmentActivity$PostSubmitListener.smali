.class public Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostSubmitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 2185
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    .registers 2

    .prologue
    .line 2185
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2339
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2340
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(ILjava/lang/String;)V

    .line 2341
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 2188
    const-string v0, "campaign.adbuzz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostSubmitListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2191
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$33(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2192
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$33(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2197
    :cond_37
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    new-instance v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2335
    :cond_41
    return-void
.end method
