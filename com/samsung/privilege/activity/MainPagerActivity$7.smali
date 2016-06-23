.class Lcom/samsung/privilege/activity/MainPagerActivity$7;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

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
    .line 677
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 678
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 624
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 625
    .local v4, "response_text":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(CheckNFC|onComplete)response_code="

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

    .line 627
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$300(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 630
    :try_start_36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v6, v1}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    # setter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$402(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;

    .line 634
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v6, 0x7f090242

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    .line 636
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v2, v5, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 638
    :cond_71
    move-object v3, v2

    .line 640
    .local v3, "message_final":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a3

    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a3

    .line 641
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$7$1;

    invoke-direct {v6, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$7$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 663
    :goto_98
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 673
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :goto_a2
    return-void

    .line 646
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_a3
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e0

    .line 647
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_bc} :catch_bd

    goto :goto_98

    .line 670
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "message_final":Ljava/lang/String;
    :catch_bd
    move-exception v0

    .line 671
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(PostNFCEncyptListener|onComplete|JSONException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 653
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message_final":Ljava/lang/String;
    :cond_e0
    :try_start_e0
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_ea} :catch_bd

    goto :goto_98
.end method
