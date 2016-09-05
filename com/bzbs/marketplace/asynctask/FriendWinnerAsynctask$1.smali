.class Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FriendWinnerAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->b(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 122
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 129
    :cond_21
    :goto_21
    return-void

    .line 125
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 126
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_21
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 145
    return-void
.end method

.method public onProgress(JJ)V
    .registers 8

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V

    .line 139
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 140
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 134
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
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a(Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 114
    :cond_17
    :goto_17
    return-void

    .line 100
    :cond_18
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 101
    iget-object v0, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->b(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/FriendWinnerModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/FriendWinnerModel;

    .line 103
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 104
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackModel;->a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/FriendWinnerModel;)V

    goto :goto_17

    .line 107
    :cond_4c
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1$1;-><init>(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;)V

    .line 108
    invoke-virtual {v2}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 109
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 110
    iget-object v1, p0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$1;->a:Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    invoke-static {v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->d(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;->a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V

    goto :goto_17
.end method
