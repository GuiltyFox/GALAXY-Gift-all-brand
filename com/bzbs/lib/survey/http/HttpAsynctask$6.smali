.class Lcom/bzbs/lib/survey/http/HttpAsynctask$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/HttpAsynctask;->DELETE()V
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
    .line 236
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

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
    .line 247
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 248
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 249
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 250
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 255
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 256
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 257
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onProgress(JJ)V

    .line 258
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->isCancelRequest:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$200(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 240
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 241
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$6;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # getter for: Lcom/bzbs/lib/survey/http/HttpAsynctask;->callbackHttpAsyncTask:Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;
    invoke-static {v0}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$300(Lcom/bzbs/lib/survey/http/HttpAsynctask;)Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bzbs/lib/survey/http/CallbackHttpAsyncTask;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 242
    :cond_19
    return-void
.end method
