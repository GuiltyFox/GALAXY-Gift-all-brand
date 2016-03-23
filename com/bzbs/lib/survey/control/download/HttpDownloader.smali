.class Lcom/bzbs/lib/survey/control/download/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# static fields
.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private mDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/control/download/DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private realSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->realSize:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    .line 31
    return-void
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 1

    .prologue
    .line 163
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 164
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v0
.end method

.method private declared-synchronized notifyComplete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "status_complete"

    invoke-virtual {p1, v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .line 192
    .local v0, "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    const-string/jumbo v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HttpDownloader notifyComplete() onComplete() length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onComplete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_d

    .line 190
    .end local v0    # "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 195
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 196
    const-string/jumbo v1, "HttpDownloader"

    const-string/jumbo v2, "HttpDownloader notifyComplete() onComplete() request"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onComplete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    .line 199
    :cond_56
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "status_error"

    invoke-virtual {p1, v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .line 215
    .local v0, "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    const-string/jumbo v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HttpDownloader notifyError() onError() length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_d

    .line 213
    .end local v0    # "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 218
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 219
    const-string/jumbo v1, "HttpDownloader"

    const-string/jumbo v2, "HttpDownloader notifyStart() onError() request"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    .line 222
    :cond_56
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .line 203
    .local v0, "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    const-string/jumbo v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HttpDownloader notifyProgress() onProgress() length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_7

    .line 202
    .end local v0    # "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1

    .line 206
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 207
    const-string/jumbo v1, "HttpDownloader"

    const-string/jumbo v2, "HttpDownloader notifyStart() onProgress() request"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_37

    .line 210
    :cond_50
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyStart(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "status_start"

    invoke-virtual {p1, v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .line 180
    .local v0, "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    const-string/jumbo v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HttpDownloader notifyStart() onStart() length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onStart(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_d

    .line 178
    .end local v0    # "l":Lcom/bzbs/lib/survey/control/download/DownloadListener;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 183
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 184
    const-string/jumbo v1, "HttpDownloader"

    const-string/jumbo v2, "HttpDownloader notifyStart() onStart() request"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadListener()Lcom/bzbs/lib/survey/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bzbs/lib/survey/control/download/DownloadListener;->onStart(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    .line 187
    :cond_56
    monitor-exit p0

    return-void
.end method

.method private static setupFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "destUri"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_16
    return-object v0
.end method

.method private writeToFile(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/bzbs/lib/survey/control/download/DownloadRequest;)J
    .registers 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/16 v3, 0x1000

    :try_start_2
    new-array v0, v3, [B

    .line 134
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 136
    .local v2, "len":I
    :goto_5
    invoke-virtual {p3}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "status_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 137
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    invoke-virtual {p3}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadSize(J)J

    .line 140
    invoke-direct {p0, p3}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_29} :catch_2a
    .catchall {:try_start_2 .. :try_end_29} :catchall_2c

    goto :goto_5

    .line 144
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_2a
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    :try_start_2b
    throw v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2c
    move-exception v3

    if-eqz p2, :cond_32

    .line 148
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_32
    throw v3

    .line 142
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_33
    :try_start_33
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_2a
    .catchall {:try_start_33 .. :try_end_36} :catchall_2c

    .line 147
    if-eqz p2, :cond_3b

    .line 148
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 151
    :cond_3b
    invoke-virtual {p3}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method declared-synchronized addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 169
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 171
    :cond_e
    monitor-exit p0

    return-void

    .line 168
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doDownload(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)I
    .registers 20
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 34
    const/4 v12, 0x0

    .line 36
    .local v12, "statusCode":I
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader Download() srcUri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getSrcUri()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 39
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getSrcUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDestUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->setupFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, "destFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 47
    .local v9, "os":Ljava/io/OutputStream;
    :try_start_49
    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getSupportContinue()Z

    move-result v13

    if-eqz v13, :cond_26e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_26e

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_26e

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_26e

    const/4 v8, 0x1

    .line 49
    .local v8, "isContinueDownload":Z
    :goto_6c
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() isContinueDownload="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() request.getSupportContinue()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getSupportContinue()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() destFile.exists()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() request.getDownloadSize()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() destFile.length()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader doDownload() request.getTotalSize()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz v8, :cond_271

    .line 57
    const-string/jumbo v13, "x-ms-version"

    const-string/jumbo v14, "2012-02-12"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v10, v2, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v9    # "os":Ljava/io/OutputStream;
    .local v10, "os":Ljava/io/OutputStream;
    move-object v9, v10

    .line 71
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    :goto_15b
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 72
    .local v11, "response":Lorg/apache/http/HttpResponse;
    if-nez v8, :cond_19b

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_19b

    .line 74
    const-string/jumbo v13, "x-ms-version"

    const-string/jumbo v14, "2012-02-12"

    invoke-interface {v11, v13, v14}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_19b
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 81
    .local v4, "entry":Lorg/apache/http/HttpEntity;
    const-string/jumbo v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpDownloader Download() long="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(2)_totalByte = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 87
    .local v7, "is":Ljava/io/InputStream;
    if-nez v8, :cond_248

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2c5

    .line 89
    const-string/jumbo v13, "OAT"

    const-string/jumbo v14, "CONTINUE2"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "destFile(2) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setTotalSize(2) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setTotalSize(J)J

    .line 93
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadSize(J)J

    .line 101
    :cond_248
    :goto_248
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyStart(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v9, v1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->writeToFile(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/bzbs/lib/survey/control/download/DownloadRequest;)J

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_307

    .line 106
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDestUri()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyComplete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    .line 128
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :goto_26d
    return v12

    .line 47
    :cond_26e
    const/4 v8, 0x0

    goto/16 :goto_6c

    .line 61
    .restart local v8    # "isContinueDownload":Z
    :cond_271
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2bd

    .line 62
    const-string/jumbo v13, "OAT"

    const-string/jumbo v14, "CONTINUE1"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v13, "x-ms-version"

    const-string/jumbo v14, "2012-02-12"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v10, v2, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    goto/16 :goto_15b

    .line 67
    :cond_2bd
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    goto/16 :goto_15b

    .line 95
    .restart local v4    # "entry":Lorg/apache/http/HttpEntity;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_2c5
    const-string/jumbo v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setTotalSize(1) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setTotalSize(J)J

    .line 97
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadSize(J)J
    :try_end_2f5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_49 .. :try_end_2f5} :catch_2f7
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_2f5} :catch_30c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_2f5} :catch_31c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_2f5} :catch_32c

    goto/16 :goto_248

    .line 111
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_2f7
    move-exception v3

    .line 112
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string/jumbo v13, "HttpDownloader"

    const-string/jumbo v14, "HttpDownloader Download() ClientProtocolException"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v12, 0x1

    .line 114
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    goto/16 :goto_26d

    .line 109
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v4    # "entry":Lorg/apache/http/HttpEntity;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "isContinueDownload":Z
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_307
    :try_start_307
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    :try_end_30a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_307 .. :try_end_30a} :catch_2f7
    .catch Ljava/io/FileNotFoundException; {:try_start_307 .. :try_end_30a} :catch_30c
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_30a} :catch_31c
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_30a} :catch_32c

    goto/16 :goto_26d

    .line 115
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_30c
    move-exception v3

    .line 116
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v13, "HttpDownloader"

    const-string/jumbo v14, "HttpDownloader Download() FileNotFoundException"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v12, 0x2

    .line 118
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    goto/16 :goto_26d

    .line 119
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_31c
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v13, "HttpDownloader"

    const-string/jumbo v14, "HttpDownloader Download() IOException"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v12, 0x3

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    goto/16 :goto_26d

    .line 123
    .end local v3    # "e":Ljava/io/IOException;
    :catch_32c
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "HttpDownloader"

    const-string/jumbo v14, "HttpDownloader Download() Exception"

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v12, 0x270f

    .line 126
    invoke-direct/range {p0 .. p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->notifyError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    goto/16 :goto_26d
.end method

.method declared-synchronized removeDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
