.class Lcom/bzbs/lib/survey/http/HttpAsynctask$7;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/HttpAsynctask;->POST_IMAGE()V
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
    .line 266
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

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
    .line 282
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 283
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 285
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onProgress(JJ)V

    .line 291
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 292
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onProgress(JJ)V

    .line 294
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 269
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 271
    .local v0, "jsonCache":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # invokes: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isJson(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$100(Lcom/bzbs/lib/survey/http/HttpAsynctask;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 272
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->saveCache(Ljava/lang/String;I)V

    .line 274
    :cond_17
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 275
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 276
    iget-object v1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$7;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 277
    :cond_30
    return-void
.end method
