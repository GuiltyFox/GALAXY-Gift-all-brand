.class public Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.super Ljava/lang/Object;
.source "OutputStreamDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field b:Lcom/koushikdutta/async/AsyncServer;

.field c:Ljava/io/OutputStream;

.field d:Lcom/koushikdutta/async/callback/WritableCallback;

.field e:Z

.field f:Ljava/lang/Exception;

.field g:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .registers 3

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b:Lcom/koushikdutta/async/AsyncServer;

    .line 33
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a(Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 23
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a(Ljava/lang/Exception;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 28
    :goto_d
    return-void

    .line 25
    :catch_e
    move-exception v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 7

    .prologue
    .line 48
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v0

    if-lez v0, :cond_2e

    .line 49
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26
    .catchall {:try_start_0 .. :try_end_25} :catchall_32

    goto :goto_0

    .line 54
    :catch_26
    move-exception v0

    .line 55
    :try_start_27
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a(Ljava/lang/Exception;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_32

    .line 58
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 60
    :goto_2d
    return-void

    .line 58
    :cond_2e
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    goto :goto_2d

    :catchall_32
    move-exception v0

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    throw v0
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 94
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 66
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Ljava/io/OutputStream;

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->e:Z

    if-eqz v0, :cond_5

    .line 88
    :cond_4
    :goto_4
    return-void

    .line 83
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->e:Z

    .line 84
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f:Ljava/lang/Exception;

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public b()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->d:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->e:Z

    return v0
.end method
