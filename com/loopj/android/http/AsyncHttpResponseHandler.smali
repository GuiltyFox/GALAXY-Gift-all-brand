.class public abstract Lcom/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/loopj/android/http/ResponseHandlerInterface;


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpRH"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private TAG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[Lcz/msebera/android/httpclient/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 101
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lcz/msebera/android/httpclient/Header;

    .line 102
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 120
    if-nez p1, :cond_1d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_1d
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 123
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 101
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lcz/msebera/android/httpclient/Header;

    .line 102
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 137
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_29

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 147
    :cond_29
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, "UTF-8"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_7
.end method

.method public getRequestHeaders()[Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 14

    .prologue
    const/16 v0, 0x1000

    const-wide/16 v4, 0x0

    .line 462
    const/4 v1, 0x0

    .line 463
    if-eqz p1, :cond_75

    .line 464
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 465
    if-eqz v8, :cond_75

    .line 466
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 467
    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_21

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_21
    cmp-long v1, v2, v4

    if-gtz v1, :cond_51

    .line 472
    :goto_25
    :try_start_25
    new-instance v9, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v9, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_2a} :catch_68

    .line 474
    const/16 v0, 0x1000

    :try_start_2c
    new-array v10, v0, [B

    move-wide v0, v4

    .line 478
    :goto_2f
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v6, -0x1

    if-eq v11, v6, :cond_55

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_55

    .line 479
    int-to-long v6, v11

    add-long/2addr v6, v0

    .line 480
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0, v11}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V

    .line 481
    cmp-long v0, v2, v4

    if-gtz v0, :cond_53

    const-wide/16 v0, 0x1

    :goto_4c
    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_60

    move-wide v0, v6

    goto :goto_2f

    .line 470
    :cond_51
    long-to-int v0, v2

    goto :goto_25

    :cond_53
    move-wide v0, v2

    .line 481
    goto :goto_4c

    .line 484
    :cond_55
    :try_start_55
    invoke-static {v8}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 485
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 487
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b()[B

    move-result-object v0

    .line 494
    :goto_5f
    return-object v0

    .line 484
    :catchall_60
    move-exception v0

    invoke-static {v8}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 485
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lcz/msebera/android/httpclient/HttpEntity;)V

    throw v0
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_68} :catch_68

    .line 488
    :catch_68
    move-exception v0

    .line 489
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 490
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    move-object v0, v1

    goto :goto_5f
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 347
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e8

    .line 397
    :goto_8
    return-void

    .line 349
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 350
    if-eqz v0, :cond_34

    array-length v1, v0

    if-lt v1, v4, :cond_34

    .line 351
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lcz/msebera/android/httpclient/Header;

    check-cast v1, [Lcz/msebera/android/httpclient/Header;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 394
    :catch_2f
    move-exception v0

    .line 395
    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 353
    :cond_34
    :try_start_34
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 357
    :pswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 358
    if-eqz v0, :cond_6c

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6c

    .line 359
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lcz/msebera/android/httpclient/Header;

    check-cast v1, [Lcz/msebera/android/httpclient/Header;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    const/4 v4, 0x3

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_8

    .line 361
    :cond_6c
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 365
    :pswitch_78
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_8

    .line 368
    :pswitch_7c
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_8

    .line 371
    :pswitch_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 372
    if-eqz v0, :cond_b0

    array-length v1, v0
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_89} :catch_2f

    if-lt v1, v3, :cond_b0

    .line 374
    const/4 v1, 0x0

    :try_start_8c
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_a0} :catch_a2

    goto/16 :goto_8

    .line 375
    :catch_a2
    move-exception v0

    .line 376
    :try_start_a3
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpRH"

    const-string/jumbo v3, "custom onProgress contains an error"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 379
    :cond_b0
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 383
    :pswitch_bd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 384
    if-eqz v0, :cond_d6

    array-length v1, v0

    if-ne v1, v2, :cond_d6

    .line 385
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_8

    .line 387
    :cond_d6
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "RETRY_MESSAGE didn\'t get enough params"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 391
    :pswitch_e3
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onCancel()V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_e6} :catch_2f

    goto/16 :goto_8

    .line 347
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_9
        :pswitch_40
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_bd
        :pswitch_e3
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .registers 4

    .prologue
    .line 299
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 258
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 268
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 263
    return-void
.end method

.method public onProgress(JJ)V
    .registers 16

    .prologue
    .line 242
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "AsyncHttpRH"

    const-string/jumbo v4, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_37

    long-to-double v0, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v8

    long-to-double v8, p3

    div-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    :goto_29
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 242
    :cond_37
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_29
.end method

.method public onRetry(I)V
    .registers 8

    .prologue
    .line 295
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "Request retry no. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 303
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 414
    if-eqz p1, :cond_f

    .line 415
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 417
    :cond_c
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 423
    :cond_f
    :goto_f
    return-void

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public final sendCancelMessage()V
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 340
    return-void
.end method

.method public final sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 319
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 320
    return-void
.end method

.method public final sendFinishMessage()V
    .registers 3

    .prologue
    .line 329
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 330
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 401
    :cond_a
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 406
    :cond_d
    :goto_d
    return-void

    .line 402
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 403
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_1d
    const-string/jumbo v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 403
    :cond_29
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final sendProgressMessage(JJ)V
    .registers 10

    .prologue
    .line 309
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 310
    return-void
.end method

.method public sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 8

    .prologue
    .line 439
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_40

    .line 440
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 442
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v1

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_40

    .line 445
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_41

    .line 446
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    new-instance v4, Lcz/msebera/android/httpclient/client/HttpResponseException;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v5

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 452
    :cond_40
    :goto_40
    return-void

    .line 448
    :cond_41
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V

    goto :goto_40
.end method

.method public final sendRetryMessage(I)V
    .registers 6

    .prologue
    .line 334
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 335
    return-void
.end method

.method public final sendStartMessage()V
    .registers 3

    .prologue
    .line 324
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 325
    return-void
.end method

.method public final sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 314
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 315
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setRequestHeaders([Lcz/msebera/android/httpclient/Header;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lcz/msebera/android/httpclient/Header;

    .line 177
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 167
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 157
    return-void
.end method

.method public setUsePoolThread(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 213
    if-eqz p1, :cond_7

    .line 214
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 215
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 218
    :cond_7
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    .line 219
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .registers 5

    .prologue
    .line 187
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    if-nez v0, :cond_12

    .line 188
    const/4 p1, 0x1

    .line 189
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpRH"

    const-string/jumbo v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_12
    if-nez p1, :cond_24

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_24

    .line 195
    new-instance v0, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 201
    :cond_21
    :goto_21
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 202
    return-void

    .line 196
    :cond_24
    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_21
.end method
