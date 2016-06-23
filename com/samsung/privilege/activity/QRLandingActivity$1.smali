.class Lcom/samsung/privilege/activity/QRLandingActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "QRLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/QRLandingActivity;->processNFC_QR(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/QRLandingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/QRLandingActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

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
    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 156
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 157
    .local v4, "response_text":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$000(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(getNFCData|onComplete)response_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :try_start_2d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v6, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v6, v1}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    # setter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$102(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;

    .line 164
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    const v6, 0x7f090242

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 166
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v2, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 168
    :cond_68
    move-object v3, v2

    .line 170
    .local v3, "message_final":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9a

    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9a

    .line 171
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v6, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;

    invoke-direct {v6, p0, v3}, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    :goto_8f
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v6, Lcom/samsung/privilege/activity/QRLandingActivity$1$4;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$4;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :goto_99
    return-void

    .line 177
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_9a
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d7

    .line 178
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v6, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_b3} :catch_b4

    goto :goto_8f

    .line 200
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :catch_b4
    move-exception v0

    .line 201
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$000(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(getNFCData|onComplete|JSONException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 184
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_d7
    :try_start_d7
    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    new-instance v6, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/QRLandingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_d7 .. :try_end_e1} :catch_b4

    goto :goto_8f
.end method
