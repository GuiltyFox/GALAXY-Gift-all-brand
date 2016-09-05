.class Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketPlaceListAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->b(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 127
    :cond_21
    :goto_21
    return-void

    .line 123
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 124
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_21
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 143
    return-void
.end method

.method public onProgress(JJ)V
    .registers 8

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 137
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 138
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 132
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
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a(Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 99
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->b(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 100
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 101
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 102
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V

    .line 112
    :cond_3d
    :goto_3d
    return-void

    .line 105
    :cond_3e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1$1;-><init>(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;)V

    .line 106
    invoke-virtual {v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 107
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 108
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->d(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V

    goto :goto_3d
.end method
