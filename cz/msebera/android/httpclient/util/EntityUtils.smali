.class public final Lcz/msebera/android/httpclient/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method public static a(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .prologue
    .line 82
    if-nez p0, :cond_3

    .line 91
    :cond_2
    :goto_2
    return-void

    .line 85
    :cond_3
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2
.end method

.method public static b(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 9

    .prologue
    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 121
    const-string/jumbo v2, "Entity"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 123
    if-nez v2, :cond_11

    .line 124
    const/4 v0, 0x0

    .line 141
    :goto_10
    return-object v0

    .line 127
    :cond_11
    :try_start_11
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    const-string/jumbo v3, "HTTP entity too large to be buffered in memory"

    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 129
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 130
    if-gez v1, :cond_4c

    .line 133
    :goto_2a
    new-instance v1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    .line 134
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 136
    :goto_33
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_44

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3f

    goto :goto_33

    .line 141
    :catchall_3f
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 139
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b()[B
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_3f

    move-result-object v0

    .line 141
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :cond_4c
    move v0, v1

    goto :goto_2a
.end method
