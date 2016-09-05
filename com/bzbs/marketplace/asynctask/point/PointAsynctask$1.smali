.class Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PointAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->b(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 128
    :cond_21
    :goto_21
    return-void

    .line 124
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_21
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 144
    return-void
.end method

.method public onProgress(JJ)V
    .registers 8

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 138
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 139
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 133
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a(Ljava/lang/String;I)V

    .line 99
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 100
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->b(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 101
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/PointModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/PointModel;

    .line 102
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 103
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->c(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/PointModel;)V

    .line 113
    :cond_3d
    :goto_3d
    return-void

    .line 106
    :cond_3e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1$1;-><init>(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;)V

    .line 107
    invoke-virtual {v2}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 108
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 109
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->d(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;)Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V

    goto :goto_3d
.end method
