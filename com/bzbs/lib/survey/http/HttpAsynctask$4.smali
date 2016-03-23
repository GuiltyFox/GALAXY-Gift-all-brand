.class Lcom/bzbs/lib/survey/http/HttpAsynctask$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/HttpAsynctask;->POST()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

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
    .line 187
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 188
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 189
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 190
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 195
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 196
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 197
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onProgress(JJ)V

    .line 198
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 170
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 172
    .local v0, "jsonCache":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # invokes: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isJson(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$100(Lcom/bzbs/lib/survey/http/HttpAsynctask;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 173
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->saveCache(Ljava/lang/String;I)V

    .line 176
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 177
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 178
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$4;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_31

    .line 182
    :cond_30
    :goto_30
    return-void

    .line 179
    :catch_31
    move-exception v1

    goto :goto_30
.end method
