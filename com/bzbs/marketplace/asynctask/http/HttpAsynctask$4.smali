.class Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 200
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 202
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 207
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 208
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 209
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(JJ)V

    .line 210
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Ljava/lang/String;I)V

    .line 191
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 192
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 193
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$4;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 194
    :cond_23
    return-void
.end method
