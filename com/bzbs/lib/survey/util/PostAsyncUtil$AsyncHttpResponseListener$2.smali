.class Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 978
    const-string/jumbo v11, ""

    .line 979
    .local v11, "strError":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 980
    .local v10, "strCode":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 983
    .local v12, "strType":Ljava/lang/String;
    :try_start_9
    new-instance v8, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 984
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 985
    .local v9, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v0, "message"

    invoke-static {v9, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 986
    const-string/jumbo v0, "code"

    invoke-static {v9, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 987
    const-string/jumbo v0, "type"

    invoke-static {v9, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_82

    move-result-object v12

    .line 999
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "json_error":Lorg/json/JSONObject;
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v3, v3, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v4, v4, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->notificationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4b} :catch_88

    .line 1005
    :goto_4b
    const-string/jumbo v0, "buzzebees"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1006
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 1012
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_VAT_Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "15"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/bzbs/lib/survey/util/async/PostEvents;->onPostError(Ljava/lang/String;Lcom/bzbs/lib/survey/util/async/PostData;)V

    .line 1014
    return-void

    .line 988
    :catch_82
    move-exception v7

    .line 989
    .local v7, "e2":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_2c

    .line 1000
    .end local v7    # "e2":Ljava/lang/Exception;
    :catch_88
    move-exception v7

    .line 1001
    .restart local v7    # "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4b

    .line 1008
    .end local v7    # "e2":Ljava/lang/Exception;
    :cond_a6
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v2, 0x2

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$400(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1009
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->saveMessageErrorToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method
