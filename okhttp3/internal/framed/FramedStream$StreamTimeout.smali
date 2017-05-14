.class Lokhttp3/internal/framed/FramedStream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "FramedStream.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .registers 2

    .prologue
    .line 594
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->a:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 600
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 601
    if-eqz p1, :cond_d

    .line 602
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 604
    :cond_d
    return-object v0
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->a:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 597
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 608
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->i_()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 609
    :cond_c
    return-void
.end method
