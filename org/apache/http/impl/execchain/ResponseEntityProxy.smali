.class Lorg/apache/http/impl/execchain/ResponseEntityProxy;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .registers 3
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "connHolder"    # Lorg/apache/http/impl/execchain/ConnectionHolder;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 61
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    .line 62
    return-void
.end method

.method private cleanup()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 68
    :cond_9
    return-void
.end method

.method public static enchance(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .registers 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "connHolder"    # Lorg/apache/http/impl/execchain/ConnectionHolder;

    .prologue
    .line 53
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 54
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_16

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 55
    new-instance v1, Lorg/apache/http/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 57
    :cond_16
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    .line 96
    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 115
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 117
    const/4 v0, 0x0

    return v0

    .line 115
    :catchall_b
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/conn/EofSensorInputStreamHC4;

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_14

    .line 73
    :try_start_4
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 77
    :cond_11
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 80
    :cond_14
    return-void

    .line 77
    :catchall_15
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 6
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReleased()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    move-result v3

    if-nez v3, :cond_18

    const/4 v1, 0x1

    .line 126
    .local v1, "open":Z
    :goto_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 127
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_14} :catch_1a
    .catchall {:try_start_e .. :try_end_14} :catchall_1e

    .line 134
    :cond_14
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 136
    return v2

    .end local v1    # "open":Z
    :cond_18
    move v1, v2

    .line 122
    goto :goto_e

    .line 128
    .restart local v1    # "open":Z
    :catch_1a
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/net/SocketException;
    if-eqz v1, :cond_14

    .line 130
    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 134
    .end local v0    # "ex":Ljava/net/SocketException;
    .end local v1    # "open":Z
    :catchall_1e
    move-exception v2

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 104
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 106
    return-void

    .line 104
    :catchall_c
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method
