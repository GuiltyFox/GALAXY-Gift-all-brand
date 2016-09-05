.class public abstract Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpRH"


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    .line 102
    iput-boolean v1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 103
    iput-boolean v1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .registers 5

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZZ)V
    .registers 8

    .prologue
    .line 79
    invoke-direct {p0, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Z)V

    .line 80
    if-eqz p1, :cond_48

    const/4 v0, 0x1

    :goto_6
    const-string/jumbo v1, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string/jumbo v1, "Cannot create parent directories for requested File location"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 84
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_41

    .line 86
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "FileAsyncHttpRH"

    const-string/jumbo v2, "Cannot create directories for requested Directory location, might not be a problem"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_41
    iput-object p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    .line 90
    iput-boolean p2, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 91
    iput-boolean p3, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    .line 92
    return-void

    .line 80
    :cond_48
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public deleteTargetFile()Z
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getOriginalFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    return-object v0

    .line 137
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 217
    if-eqz p1, :cond_4b

    .line 218
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 219
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 220
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v5

    iget-boolean v6, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 221
    if-eqz v1, :cond_4b

    .line 223
    const/16 v5, 0x1000

    :try_start_1a
    new-array v5, v5, [B

    .line 226
    :goto_1c
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_42

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_42

    .line 227
    add-int/2addr v0, v6

    .line 228
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 229
    int-to-long v6, v0

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_37

    goto :goto_1c

    .line 232
    :catchall_37
    move-exception v0

    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 233
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    throw v0

    .line 232
    :cond_42
    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 233
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 238
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_14

    .line 148
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    .line 150
    :cond_14
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    return-object v0

    .line 148
    :cond_17
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    goto :goto_12
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .registers 9

    .prologue
    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string/jumbo v3, "Target file is not a directory, cannot proceed"

    invoke-static {v0, v3}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_85

    move v0, v1

    :goto_19
    const-string/jumbo v3, "RequestURI is null, cannot proceed"

    invoke-static {v0, v3}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_84

    iget-boolean v4, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    if-eqz v4, :cond_84

    .line 169
    const-string/jumbo v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (%d)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_67
    move v3, v2

    .line 176
    :goto_68
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b4

    move-object v0, v4

    .line 182
    :cond_84
    return-object v0

    :cond_85
    move v0, v2

    .line 163
    goto :goto_19

    .line 172
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " (%d)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 179
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_68
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .prologue
    .line 122
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "Tried creating temporary file without having Context"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 124
    :try_start_9
    const-string/jumbo v0, "temp_"

    const-string/jumbo v1, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_1a

    move-result-object v0

    .line 128
    :goto_17
    return-object v0

    .line 122
    :cond_18
    const/4 v0, 0x0

    goto :goto_3

    .line 125
    :catch_1a
    move-exception v0

    .line 126
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "FileAsyncHttpRH"

    const-string/jumbo v3, "Cannot create temporary file"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 188
    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
.end method

.method public final onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 5

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V

    .line 204
    return-void
.end method
