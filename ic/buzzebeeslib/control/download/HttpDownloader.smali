.class Lic/buzzebeeslib/control/download/HttpDownloader;
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
            "Lic/buzzebeeslib/control/download/DownloadListener;",
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

    iput-wide v0, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->realSize:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

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

.method private declared-synchronized notifyComplete(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    const-string v1, "status_complete"

    invoke-virtual {p1, v1}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    .line 195
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 196
    const-string v1, "HttpDownloader"

    const-string v2, "HttpDownloader notifyComplete() onComplete() request"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onComplete(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4c

    .line 199
    :cond_26
    monitor-exit p0

    return-void

    .line 191
    :cond_28
    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadListener;

    .line 192
    .local v0, "l":Lic/buzzebeeslib/control/download/DownloadListener;
    const-string v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpDownloader notifyComplete() onComplete() length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onComplete(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_4c

    goto :goto_c

    .line 190
    .end local v0    # "l":Lic/buzzebeeslib/control/download/DownloadListener;
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyError(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    const-string v1, "status_error"

    invoke-virtual {p1, v1}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    .line 218
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 219
    const-string v1, "HttpDownloader"

    const-string v2, "HttpDownloader notifyStart() onError() request"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onError(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4c

    .line 222
    :cond_26
    monitor-exit p0

    return-void

    .line 214
    :cond_28
    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadListener;

    .line 215
    .local v0, "l":Lic/buzzebeeslib/control/download/DownloadListener;
    const-string v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpDownloader notifyError() onError() length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v0, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onError(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_4c

    goto :goto_c

    .line 213
    .end local v0    # "l":Lic/buzzebeeslib/control/download/DownloadListener;
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_23

    .line 206
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 207
    const-string v1, "HttpDownloader"

    const-string v2, "HttpDownloader notifyStart() onProgress() request"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_47

    .line 210
    :cond_21
    monitor-exit p0

    return-void

    .line 202
    :cond_23
    :try_start_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadListener;

    .line 203
    .local v0, "l":Lic/buzzebeeslib/control/download/DownloadListener;
    const-string v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpDownloader notifyProgress() onProgress() length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {v0, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_47

    goto :goto_7

    .line 202
    .end local v0    # "l":Lic/buzzebeeslib/control/download/DownloadListener;
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyStart(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    const-string v1, "status_start"

    invoke-virtual {p1, v1}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    .line 183
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 184
    const-string v1, "HttpDownloader"

    const-string v2, "HttpDownloader notifyStart() onStart() request"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onStart(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4c

    .line 187
    :cond_26
    monitor-exit p0

    return-void

    .line 179
    :cond_28
    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadListener;

    .line 180
    .local v0, "l":Lic/buzzebeeslib/control/download/DownloadListener;
    const-string v2, "HttpDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpDownloader notifyStart() onStart() length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v0, p1}, Lic/buzzebeeslib/control/download/DownloadListener;->onStart(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_4c

    goto :goto_c

    .line 178
    .end local v0    # "l":Lic/buzzebeeslib/control/download/DownloadListener;
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
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

.method private writeToFile(Ljava/io/InputStream;Ljava/io/OutputStream;Lic/buzzebeeslib/control/download/DownloadRequest;)J
    .registers 11
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;
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
    invoke-virtual {p3}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    .line 142
    :cond_18
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_36
    .catchall {:try_start_2 .. :try_end_1b} :catchall_38

    .line 147
    if-eqz p2, :cond_20

    .line 148
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 151
    :cond_20
    invoke-virtual {p3}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v3

    return-wide v3

    .line 137
    :cond_25
    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    invoke-virtual {p3}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {p3, v3, v4}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadSize(J)J

    .line 140
    invoke-direct {p0, p3}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_35} :catch_36
    .catchall {:try_start_26 .. :try_end_35} :catchall_38

    goto :goto_5

    .line 144
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_36
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    :try_start_37
    throw v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v3

    .line 147
    if-eqz p2, :cond_3e

    .line 148
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 150
    :cond_3e
    throw v3
.end method


# virtual methods
.method declared-synchronized addDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lic/buzzebeeslib/control/download/DownloadListener;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 169
    iget-object v0, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

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

.method public doDownload(Lic/buzzebeeslib/control/download/DownloadRequest;)I
    .registers 19
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 34
    const/4 v12, 0x0

    .line 36
    .local v12, "statusCode":I
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader Download() srcUri="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getSrcUri()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lic/buzzebeeslib/control/download/HttpDownloader;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 39
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getSrcUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDestUri()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/control/download/HttpDownloader;->setupFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, "destFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 47
    .local v9, "os":Ljava/io/OutputStream;
    :try_start_42
    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getSupportContinue()Z

    move-result v13

    if-eqz v13, :cond_205

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_205

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v13

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_205

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_205

    const/4 v8, 0x1

    .line 49
    .local v8, "isContinueDownload":Z
    :goto_65
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() isContinueDownload="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() request.getSupportContinue()="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getSupportContinue()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() destFile.exists()="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() request.getDownloadSize()="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() destFile.length()="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader doDownload() request.getTotalSize()="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz v8, :cond_208

    .line 57
    const-string v13, "x-ms-version"

    const-string v14, "2012-02-12"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bytes="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

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
    :goto_11f
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 72
    .local v11, "response":Lorg/apache/http/HttpResponse;
    if-nez v8, :cond_154

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_154

    .line 74
    const-string v13, "x-ms-version"

    const-string v14, "2012-02-12"

    invoke-interface {v11, v13, v14}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bytes="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_154
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 81
    .local v4, "entry":Lorg/apache/http/HttpEntity;
    const-string v13, "HttpDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "HttpDownloader Download() long="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "(2)_totalByte = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 87
    .local v7, "is":Ljava/io/InputStream;
    if-nez v8, :cond_1df

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_24f

    .line 89
    const-string v13, "OAT"

    const-string v14, "CONTINUE2"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "destFile(2) = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setTotalSize(2) = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lic/buzzebeeslib/control/download/DownloadRequest;->setTotalSize(J)J

    .line 93
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadSize(J)J

    .line 101
    :cond_1df
    :goto_1df
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyStart(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v9, v1}, Lic/buzzebeeslib/control/download/HttpDownloader;->writeToFile(Ljava/io/InputStream;Ljava/io/OutputStream;Lic/buzzebeeslib/control/download/DownloadRequest;)J

    .line 105
    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_287

    .line 106
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDestUri()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 107
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyComplete(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 128
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :goto_204
    return v12

    .line 47
    :cond_205
    const/4 v8, 0x0

    goto/16 :goto_65

    .line 61
    .restart local v8    # "isContinueDownload":Z
    :cond_208
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_247

    .line 62
    const-string v13, "OAT"

    const-string v14, "CONTINUE1"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v13, "x-ms-version"

    const-string v14, "2012-02-12"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bytes="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

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

    .line 66
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    goto/16 :goto_11f

    .line 67
    :cond_247
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    goto/16 :goto_11f

    .line 95
    .restart local v4    # "entry":Lorg/apache/http/HttpEntity;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_24f
    const-string v13, "OAT"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setTotalSize(1) = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lic/buzzebeeslib/control/download/DownloadRequest;->setTotalSize(J)J

    .line 97
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lic/buzzebeeslib/control/download/DownloadRequest;->setDownloadSize(J)J
    :try_end_277
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_42 .. :try_end_277} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_277} :catch_28c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_277} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_277} :catch_2a8

    goto/16 :goto_1df

    .line 111
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_279
    move-exception v3

    .line 112
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v13, "HttpDownloader"

    const-string v14, "HttpDownloader Download() ClientProtocolException"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v12, 0x1

    .line 114
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyError(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    goto/16 :goto_204

    .line 109
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v4    # "entry":Lorg/apache/http/HttpEntity;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "isContinueDownload":Z
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_287
    :try_start_287
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_28a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_287 .. :try_end_28a} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_287 .. :try_end_28a} :catch_28c
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_28a} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_28a} :catch_2a8

    goto/16 :goto_204

    .line 115
    .end local v4    # "entry":Lorg/apache/http/HttpEntity;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isContinueDownload":Z
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_28c
    move-exception v3

    .line 116
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v13, "HttpDownloader"

    const-string v14, "HttpDownloader Download() FileNotFoundException"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v12, 0x2

    .line 118
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyError(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    goto/16 :goto_204

    .line 119
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_29a
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    const-string v13, "HttpDownloader"

    const-string v14, "HttpDownloader Download() IOException"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v12, 0x3

    .line 122
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyError(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    goto/16 :goto_204

    .line 123
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2a8
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "HttpDownloader"

    const-string v14, "HttpDownloader Download() Exception"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v12, 0x270f

    .line 126
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->notifyError(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    goto/16 :goto_204
.end method

.method declared-synchronized removeDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lic/buzzebeeslib/control/download/DownloadListener;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/HttpDownloader;->mDownloadListeners:Ljava/util/List;

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
