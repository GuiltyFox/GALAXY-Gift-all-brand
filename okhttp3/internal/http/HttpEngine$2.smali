.class Lokhttp3/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lokio/BufferedSource;

.field final synthetic c:Lokhttp3/internal/http/CacheRequest;

.field final synthetic d:Lokio/BufferedSink;

.field final synthetic e:Lokhttp3/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/HttpEngine;Lokio/BufferedSource;Lokhttp3/internal/http/CacheRequest;Lokio/BufferedSink;)V
    .registers 5

    .prologue
    .line 811
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine$2;->e:Lokhttp3/internal/http/HttpEngine;

    iput-object p2, p0, Lokhttp3/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/http/HttpEngine$2;->c:Lokhttp3/internal/http/CacheRequest;

    iput-object p4, p0, Lokhttp3/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 10

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 817
    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    move-result-wide v4

    .line 826
    cmp-long v2, v4, v0

    if-nez v2, :cond_27

    .line 827
    iget-boolean v2, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    if-nez v2, :cond_18

    .line 828
    iput-boolean v3, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    .line 829
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    :cond_18
    move-wide v4, v0

    .line 836
    :goto_19
    return-wide v4

    .line 818
    :catch_1a
    move-exception v0

    .line 819
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    if-nez v1, :cond_26

    .line 820
    iput-boolean v3, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    .line 821
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine$2;->c:Lokhttp3/internal/http/CacheRequest;

    invoke-interface {v1}, Lokhttp3/internal/http/CacheRequest;->b()V

    .line 823
    :cond_26
    throw v0

    .line 834
    :cond_27
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lokio/Buffer;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 835
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$2;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->v()Lokio/BufferedSink;

    goto :goto_19
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 844
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 845
    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/HttpEngine$2;->a:Z

    .line 847
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$2;->c:Lokhttp3/internal/http/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/http/CacheRequest;->b()V

    .line 849
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$2;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 850
    return-void
.end method
