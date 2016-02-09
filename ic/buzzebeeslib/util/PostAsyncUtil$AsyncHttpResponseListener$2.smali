.class Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    iput-object p3, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$e:Ljava/lang/Throwable;

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 976
    const-string v11, ""

    .line 977
    .local v11, "strError":Ljava/lang/String;
    const-string v10, ""

    .line 978
    .local v10, "strCode":Ljava/lang/String;
    const-string v12, ""

    .line 981
    .local v12, "strType":Ljava/lang/String;
    :try_start_6
    new-instance v8, Lorg/json/JSONObject;

    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 982
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    const-string v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 983
    .local v9, "json_error":Lorg/json/JSONObject;
    const-string v0, "message"

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 984
    const-string v0, "code"

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 985
    const-string v0, "type"

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_78

    move-result-object v12

    .line 997
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "json_error":Lorg/json/JSONObject;
    :goto_25
    :try_start_25
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v2, v2, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    iget-object v3, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v3, v3, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    iget-object v4, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v4, v4, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    iget-object v5, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v5, v5, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v6, v6, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->notificationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_44} :catch_80

    .line 1003
    :goto_44
    const-string v0, "buzzebees"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1004
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$5(Landroid/content/Context;Ljava/lang/String;)V

    .line 1010
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    # getter for: Lic/buzzebeeslib/util/PostAsyncUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$4()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_VAT_Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "15"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lic/buzzebeeslib/util/async/PostEvents;->onPostError(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V

    .line 1012
    return-void

    .line 986
    :catch_78
    move-exception v7

    .line 987
    .local v7, "e2":Ljava/lang/Exception;
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_25

    .line 998
    .end local v7    # "e2":Ljava/lang/Exception;
    :catch_80
    move-exception v7

    .line 999
    .restart local v7    # "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_44

    .line 1006
    .end local v7    # "e2":Ljava/lang/Exception;
    :cond_9d
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v2, 0x2

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$6(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1007
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->saveMessageErrorToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method
