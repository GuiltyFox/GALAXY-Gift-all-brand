.class public Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 6

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 62
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 63
    :cond_13
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->b(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    .line 67
    :goto_19
    return-void

    .line 65
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    goto :goto_19
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    if-eqz v0, :cond_c

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_b
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    .line 74
    :goto_8
    return-wide v0

    :cond_9
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    goto :goto_8
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 110
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    if-eqz v0, :cond_10

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 116
    :goto_f
    return-void

    .line 114
    :cond_10
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_f
.end method
