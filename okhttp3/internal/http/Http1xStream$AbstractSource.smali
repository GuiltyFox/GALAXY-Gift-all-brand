.class abstract Lokhttp3/internal/http/Http1xStream$AbstractSource;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field protected final a:Lokio/ForwardingTimeout;

.field protected b:Z

.field final synthetic c:Lokhttp3/internal/http/Http1xStream;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;)V
    .registers 4

    .prologue
    .line 340
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v1}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->a:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V
    .registers 3

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method protected final a(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x6

    .line 353
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->c(Lokhttp3/internal/http/Http1xStream;)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 362
    :cond_9
    :goto_9
    return-void

    .line 354
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->c(Lokhttp3/internal/http/Http1xStream;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->c(Lokhttp3/internal/http/Http1xStream;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_33
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V

    .line 358
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0, v2}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/internal/http/Http1xStream;I)I

    .line 359
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->d(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->d(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/internal/http/StreamAllocation;

    move-result-object v1

    if-nez p1, :cond_56

    const/4 v0, 0x1

    :goto_50
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$AbstractSource;->c:Lokhttp3/internal/http/Http1xStream;

    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/http/StreamAllocation;->a(ZLokhttp3/internal/http/HttpStream;)V

    goto :goto_9

    :cond_56
    const/4 v0, 0x0

    goto :goto_50
.end method
