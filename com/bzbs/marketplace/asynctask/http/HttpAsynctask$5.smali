.class Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "HttpAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 231
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 233
    :cond_19
    return-void
.end method

.method public onProgress(JJ)V
    .registers 6

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onProgress(JJ)V

    .line 239
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 241
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(JJ)V

    .line 242
    :cond_1c
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 6

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Ljava/lang/String;I)V

    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 223
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 224
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask$5;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b(Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;)Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 225
    :cond_23
    return-void
.end method
