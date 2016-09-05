.class public abstract Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "RangeFileAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RangeFileAsyncHttpRH"


# instance fields
.field private append:Z

.field private current:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 12

    .prologue
    .line 78
    if-eqz p1, :cond_59

    .line 79
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 80
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    add-long/2addr v2, v4

    .line 81
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    iget-boolean v5, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 82
    if-eqz v1, :cond_59

    .line 84
    const/16 v0, 0x1000

    :try_start_1c
    new-array v0, v0, [B

    .line 86
    :goto_1e
    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    cmp-long v5, v6, v2

    if-gez v5, :cond_50

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_50

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_50

    .line 87
    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 89
    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_45

    goto :goto_1e

    .line 92
    :catchall_45
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 92
    :cond_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 98
    :cond_59
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 53
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_2d

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 57
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 74
    :cond_2c
    :goto_2c
    return-void

    .line 58
    :cond_2d
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_58

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 60
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    new-instance v3, Lcz/msebera/android/httpclient/client/HttpResponseException;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v4

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_2c

    .line 62
    :cond_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 63
    const-string/jumbo v1, "Content-Range"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 64
    if-nez v1, :cond_86

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    .line 70
    :goto_72
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V

    goto :goto_2c

    .line 68
    :cond_86
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "RangeFileAsyncHttpRH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/loopj/android/http/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72
.end method

.method public updateRequestHeaders(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 103
    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    .line 104
    :cond_18
    iget-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    .line 106
    const-string/jumbo v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_46
    return-void
.end method
