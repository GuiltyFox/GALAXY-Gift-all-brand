.class Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ReviewAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->b(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->c(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->c(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 125
    :cond_19
    :goto_19
    return-void

    .line 121
    :cond_1a
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->d(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 122
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->d(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_19
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 141
    return-void
.end method

.method public onProgress(JJ)V
    .registers 8

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 135
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 136
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 98
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->b(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 99
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 100
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->c(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 101
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->c(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 111
    :cond_3d
    :goto_3d
    return-void

    .line 104
    :cond_3e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1$1;-><init>(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;)V

    .line 105
    invoke-virtual {v2}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 106
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->d(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 107
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->d(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;)Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V

    goto :goto_3d
.end method
