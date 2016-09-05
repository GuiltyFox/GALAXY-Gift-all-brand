.class public Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;
.super Lokhttp3/RequestBody;
.source "CountingFileRequestBody.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->a:Ljava/io/File;

    .line 23
    iput-object p2, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->c:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->b:Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;

    .line 25
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .registers 10

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->a:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->a(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    .line 42
    const-wide/16 v2, 0x0

    .line 45
    :goto_9
    invoke-interface {p1}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v0

    const-wide/16 v4, 0x800

    invoke-interface {v1, v0, v4, v5}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_28

    .line 46
    add-long/2addr v2, v4

    .line 47
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 48
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->b:Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;

    invoke-interface {v0, v2, v3}, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody$ProgressListener;->a(J)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_9

    .line 52
    :catchall_23
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_28
    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 54
    return-void
.end method

.method public b()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/CountingFileRequestBody;->c:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method
