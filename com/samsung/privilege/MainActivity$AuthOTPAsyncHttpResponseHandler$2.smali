.class Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;->val$response_text:Ljava/lang/String;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 781
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v6

    const v7, 0x7f0c0320

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 783
    .local v4, "layoutOtpRequest":Landroid/widget/RelativeLayout;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 785
    const-string v0, ""

    .line 786
    .local v0, "code":Ljava/lang/String;
    const-string v5, "Request OTP fail!"

    .line 788
    .local v5, "message":Ljava/lang/String;
    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 789
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 790
    .local v2, "jsonError":Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 791
    const-string v6, "code"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_3a

    move-result-object v0

    .line 796
    .end local v2    # "jsonError":Lorg/json/JSONObject;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :goto_30
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$2;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static {v6}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    return-void

    .line 792
    :catch_3a
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Request OTP fail!"

    goto :goto_30
.end method
