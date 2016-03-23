.class Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HistoryEWalletListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getPurchaseItem(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

.field final synthetic val$isRefreshData:Z

.field final synthetic val$strRedeemKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->val$strRedeemKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->val$isRefreshData:Z

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 295
    const-string/jumbo v5, ""

    .line 297
    .local v5, "response_text":Ljava/lang/String;
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p3}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_6b

    .line 298
    .end local v5    # "response_text":Ljava/lang/String;
    .local v6, "response_text":Ljava/lang/String;
    :try_start_8
    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$800(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_90

    move-object v5, v6

    .line 303
    .end local v6    # "response_text":Ljava/lang/String;
    .restart local v5    # "response_text":Ljava/lang/String;
    :goto_31
    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1100(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    const-string/jumbo v4, ""

    .line 307
    .local v4, "message":Ljava/lang/String;
    :try_start_3d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 309
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v7, "message"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4f} :catch_8a

    move-result-object v4

    .line 314
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "json_result":Lorg/json/JSONObject;
    :goto_50
    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 315
    move-object v4, v5

    .line 318
    :cond_5a
    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v7, v4}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->val$isRefreshData:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6a

    .line 321
    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const/4 v8, 0x0

    # invokes: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loadHistory(I)V
    invoke-static {v7, v8}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$000(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V

    .line 323
    :cond_6a
    return-void

    .line 299
    .end local v4    # "message":Ljava/lang/String;
    :catch_6b
    move-exception v1

    .line 300
    .local v1, "ex":Ljava/lang/Exception;
    :goto_6c
    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$800(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(getPurchaseItem|onFailure)response_code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 310
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v4    # "message":Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_50

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "response_text":Ljava/lang/String;
    .restart local v6    # "response_text":Ljava/lang/String;
    :catch_90
    move-exception v1

    move-object v5, v6

    .end local v6    # "response_text":Ljava/lang/String;
    .restart local v5    # "response_text":Ljava/lang/String;
    goto :goto_6c
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 202
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$800(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getPurchaseItem|onComplete)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5$1;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method
