.class Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$e:Ljava/lang/Throwable;

    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 2079
    const-string v10, ""

    .line 2080
    .local v10, "strError":Ljava/lang/String;
    const-string v9, ""

    .line 2081
    .local v9, "strCode":Ljava/lang/String;
    const-string v11, ""

    .line 2084
    .local v11, "strType":Ljava/lang/String;
    :try_start_6
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v7, "jsonRoot":Lorg/json/JSONObject;
    const-string v0, "error"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2086
    .local v8, "json_error":Lorg/json/JSONObject;
    const-string v0, "message"

    invoke-static {v8, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2087
    const-string v0, "code"

    invoke-static {v8, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2088
    const-string v0, "type"

    invoke-static {v8, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_78

    move-result-object v11

    .line 2100
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v8    # "json_error":Lorg/json/JSONObject;
    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v1, v1, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v2, v2, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    iget-object v3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v3, v3, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    iget-object v4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v4, v4, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v5, v5, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_40} :catch_80

    .line 2106
    :goto_40
    const-string v0, "buzzebees"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2107
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$5(Ljava/lang/String;)V

    .line 2113
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$8()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 2116
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2117
    return-void

    .line 2089
    .end local v12    # "toast":Landroid/widget/Toast;
    :catch_78
    move-exception v6

    .line 2090
    .local v6, "e2":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    goto :goto_25

    .line 2101
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_80
    move-exception v6

    .line 2102
    .restart local v6    # "e2":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_40

    .line 2109
    .end local v6    # "e2":Ljava/lang/Exception;
    :cond_9d
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 2110
    iget-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v0, v0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method
