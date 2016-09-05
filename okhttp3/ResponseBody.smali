.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()Ljava/nio/charset/Charset;
    .registers 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_d

    sget-object v1, Lokhttp3/internal/Util;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lokhttp3/internal/Util;->c:Ljava/nio/charset/Charset;

    goto :goto_c
.end method


# virtual methods
.method public abstract a()Lokhttp3/MediaType;
.end method

.method public abstract b()J
.end method

.method public abstract c()Lokio/BufferedSource;
.end method

.method public close()V
    .registers 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 164
    return-void
.end method

.method public final d()[B
    .registers 7

    .prologue
    .line 120
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v0

    .line 121
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_25

    .line 122
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_25
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v2

    .line 128
    :try_start_29
    invoke-interface {v2}, Lokio/BufferedSource;->r()[B
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_45

    move-result-object v3

    .line 130
    invoke-static {v2}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 132
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_4a

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4a

    .line 133
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catchall_45
    move-exception v0

    invoke-static {v2}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 135
    :cond_4a
    return-object v3
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->d()[B

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ResponseBody;->f()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
