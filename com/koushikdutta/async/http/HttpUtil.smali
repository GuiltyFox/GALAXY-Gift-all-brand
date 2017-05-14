.class public Lcom/koushikdutta/async/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public static a(Lcom/koushikdutta/async/http/Headers;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 136
    const-string/jumbo v1, "Content-Length"

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    if-nez v1, :cond_b

    .line 143
    :goto_a
    return v0

    .line 140
    :cond_b
    :try_start_b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result v0

    goto :goto_a

    .line 142
    :catch_10
    move-exception v1

    goto :goto_a
.end method

.method public static a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 65
    :try_start_5
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_2e

    move-result-wide v0

    move-wide v2, v0

    .line 71
    :goto_11
    cmp-long v0, v4, v2

    if-eqz v0, :cond_65

    .line 72
    cmp-long v0, v2, v8

    if-gez v0, :cond_31

    .line 73
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string/jumbo v2, "not using chunked encoding, and no content-length found."

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 116
    :cond_2d
    :goto_2d
    return-object p0

    .line 67
    :catch_2e
    move-exception v0

    move-wide v2, v4

    .line 68
    goto :goto_11

    .line 78
    :cond_31
    cmp-long v0, v2, v8

    if-nez v0, :cond_42

    .line 79
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 82
    goto :goto_2d

    .line 84
    :cond_42
    new-instance v0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-direct {v0, v2, v3}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;-><init>(J)V

    .line 85
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 103
    :cond_4b
    :goto_4b
    const-string/jumbo v0, "gzip"

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 104
    new-instance v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;-><init>()V

    .line 105
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 107
    goto :goto_2d

    .line 88
    :cond_65
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 89
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    .line 90
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 92
    goto :goto_4b

    .line 94
    :cond_7f
    if-nez p3, :cond_85

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    if-ne p1, v0, :cond_4b

    :cond_85
    const-string/jumbo v0, "close"

    const-string/jumbo v1, "Connection"

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 96
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 99
    goto :goto_2d

    .line 108
    :cond_a2
    const-string/jumbo v0, "deflate"

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 109
    new-instance v0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>()V

    .line 110
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    move-object p0, v0

    .line 111
    goto/16 :goto_2d
.end method

.method public static a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 19
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_64

    .line 21
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 22
    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 23
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 25
    :cond_20
    array-length v0, v2

    :goto_21
    if-ge v1, v0, :cond_64

    aget-object v3, v2, v1

    .line 26
    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 27
    new-instance v0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>()V

    .line 41
    :goto_33
    return-object v0

    .line 29
    :cond_34
    const-string/jumbo v4, "application/json"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 30
    new-instance v0, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    goto :goto_33

    .line 32
    :cond_43
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 33
    new-instance v0, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    goto :goto_33

    .line 35
    :cond_52
    const-string/jumbo v4, "multipart/form-data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 36
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>([Ljava/lang/String;)V

    goto :goto_33

    .line 25
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 41
    :cond_64
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static a(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z
    .registers 4

    .prologue
    .line 121
    const-string/jumbo v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-nez v0, :cond_11

    .line 123
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v0, :cond_f

    const/4 v0, 0x1

    .line 124
    :goto_e
    return v0

    .line 123
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 124
    :cond_11
    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z
    .registers 4

    .prologue
    .line 129
    const-string/jumbo v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_15

    .line 131
    invoke-static {p0}, Lcom/koushikdutta/async/http/Protocol;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v0

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    .line 132
    :goto_12
    return v0

    .line 131
    :cond_13
    const/4 v0, 0x0

    goto :goto_12

    .line 132
    :cond_15
    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_12
.end method
