.class public Lcom/loopj/android/http/BlackholeHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BlackholeHttpResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 23
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 43
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 48
    return-void
.end method

.method public onProgress(JJ)V
    .registers 5

    .prologue
    .line 28
    return-void
.end method

.method public onRetry(I)V
    .registers 2

    .prologue
    .line 53
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 4

    .prologue
    .line 18
    return-void
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method
