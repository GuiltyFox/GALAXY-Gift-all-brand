.class Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthOTPAsyncHttpResponseHandler"
.end annotation


# instance fields
.field private gDialogOtp:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/MainActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p2, "dialogOtp"    # Landroid/app/Dialog;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 731
    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;

    .line 732
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 806
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 807
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 812
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 737
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(AuthOTPAsyncHttpResponseHandler|onComplete)response={"

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

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_47

    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v1, "Request OTP success."

    # invokes: Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/MainActivity;->access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 746
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    new-instance v1, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;-><init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 801
    :goto_40
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/MainActivity;->access$3(Lcom/samsung/privilege/MainActivity;Z)V

    .line 802
    return-void

    .line 777
    :cond_47
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 779
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    new-instance v1, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;-><init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_40
.end method
