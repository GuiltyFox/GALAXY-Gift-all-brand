.class Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 170
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 171
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(JJ)V

    .line 179
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 6

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 161
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 162
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$3;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 163
    :cond_23
    return-void
.end method
