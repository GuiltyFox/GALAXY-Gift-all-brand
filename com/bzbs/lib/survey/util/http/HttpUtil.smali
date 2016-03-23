.class public Lcom/bzbs/lib/survey/util/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _getResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 11
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    if-nez p0, :cond_b

    .line 58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "HTTP entity may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
    :cond_b
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 63
    .local v2, "instream":Ljava/io/InputStream;
    if-nez v2, :cond_15

    .line 64
    const-string/jumbo v6, ""

    .line 103
    :goto_14
    return-object v6

    .line 67
    :cond_15
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_29

    .line 68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "HTTP entity too large to be buffered in memory"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_29
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/http/HttpUtil;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_32

    .line 77
    const-string/jumbo v1, "ISO-8859-1"

    .line 81
    :cond_32
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    .local v4, "reader":Ljava/io/Reader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    :try_start_3e
    new-array v5, v6, [C

    .line 91
    .local v5, "tmp":[C
    :goto_40
    invoke-virtual {v4, v5}, Ljava/io/Reader;->read([C)I

    move-result v3

    .local v3, "l":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_51

    .line 93
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4c

    goto :goto_40

    .line 99
    .end local v3    # "l":I
    .end local v5    # "tmp":[C
    :catchall_4c
    move-exception v6

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    throw v6

    .restart local v3    # "l":I
    .restart local v5    # "tmp":[C
    :cond_51
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_14
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 6
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p0, :cond_b

    .line 111
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "HTTP entity may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_b
    const/4 v0, 0x0

    .line 116
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 118
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 120
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_2d

    .line 122
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 124
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_2d

    .line 126
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 134
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_2d
    return-object v0
.end method

.method public static getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 5
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, "response_text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 26
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/bzbs/lib/survey/util/http/HttpUtil;->_getResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/net/ParseException; {:try_start_2 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_10

    move-result-object v2

    .line 50
    :cond_a
    :goto_a
    return-object v2

    .line 30
    :catch_b
    move-exception v0

    .line 32
    .local v0, "e":Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_a

    .line 34
    .end local v0    # "e":Landroid/net/ParseException;
    :catch_10
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_a

    .line 40
    :try_start_13
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_a

    .line 42
    :catch_17
    move-exception v3

    goto :goto_a
.end method
