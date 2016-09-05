.class public Lcom/loopj/android/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

.field private final context:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private executionCount:I

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isFinished:Z

.field private isRequestPreProcessed:Z

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/loopj/android/http/ResponseHandlerInterface;)V
    .registers 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    const-string/jumbo v0, "client"

    invoke-static {p1, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    .line 48
    const-string/jumbo v0, "context"

    invoke-static {p2, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 49
    const-string/jumbo v0, "request"

    invoke-static {p3, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 50
    const-string/jumbo v0, "responseHandler"

    invoke-static {p4, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/ResponseHandlerInterface;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    .line 51
    return-void
.end method

.method private makeRequest()V
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    :cond_6
    :goto_6
    return-void

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 139
    new-instance v0, Ljava/net/MalformedURLException;

    const-string/jumbo v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1c
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    instance-of v0, v0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    if-eqz v0, :cond_2b

    .line 143
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    check-cast v0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)V

    .line 146
    :cond_2b
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 155
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 162
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V

    goto :goto_6
.end method

.method private makeRequestWithRetries()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->z()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-result-object v3

    move v2, v1

    .line 175
    :cond_9
    :goto_9
    if-eqz v2, :cond_77

    .line 177
    :try_start_b
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequest()V
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_e} :catch_7a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_4d

    .line 194
    :cond_e
    return-void

    .line 179
    :catch_f
    move-exception v0

    .line 183
    :try_start_10
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    iget v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    if-lez v4, :cond_78

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v3, v0, v4, v5}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_78

    move v0, v1

    :goto_40
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 199
    :goto_43
    if-eqz v2, :cond_9

    .line 200
    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    invoke-interface {v4, v5}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4c} :catch_4d

    goto :goto_9

    .line 203
    :catch_4d
    move-exception v0

    move-object v1, v0

    .line 205
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpRequest"

    const-string/jumbo v3, "Unhandled exception origin cause"

    invoke-interface {v0, v2, v3, v1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 210
    :cond_77
    throw v0

    .line 184
    :cond_78
    const/4 v0, 0x0

    goto :goto_40

    .line 185
    :catch_7a
    move-exception v2

    .line 189
    :try_start_7b
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    iget v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    goto :goto_43

    .line 191
    :catch_a5
    move-exception v0

    .line 192
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 197
    iget v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_b7} :catch_4d

    move-result v2

    goto :goto_43
.end method

.method private declared-synchronized sendCancelNotification()V
    .registers 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_19

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 224
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 226
    :cond_19
    monitor-exit p0

    return-void

    .line 222
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->abort()V

    .line 235
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 215
    if-eqz v0, :cond_b

    .line 216
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->sendCancelNotification()V

    .line 218
    :cond_b
    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onPostProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .registers 2

    .prologue
    .line 81
    return-void
.end method

.method public onPreProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .registers 2

    .prologue
    .line 66
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    :cond_8
    :goto_8
    return-void

    .line 90
    :cond_9
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isRequestPreProcessed:Z

    if-nez v0, :cond_12

    .line 91
    iput-boolean v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isRequestPreProcessed:Z

    .line 92
    invoke-virtual {p0, p0}, Lcom/loopj/android/http/AsyncHttpRequest;->onPreProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V

    .line 95
    :cond_12
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendStartMessage()V

    .line 101
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 106
    :try_start_23
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    .line 115
    :goto_26
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFinishMessage()V

    .line 121
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 126
    invoke-virtual {p0, p0}, Lcom/loopj/android/http/AsyncHttpRequest;->onPostProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V

    .line 128
    iput-boolean v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    goto :goto_8

    .line 107
    :catch_3d
    move-exception v0

    .line 108
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 109
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_26

    .line 111
    :cond_4b
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpRequest"

    const-string/jumbo v3, "makeRequestWithRetries returned error"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public setRequestTag(Ljava/lang/Object;)Lcom/loopj/android/http/AsyncHttpRequest;
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    .line 246
    return-object p0
.end method
