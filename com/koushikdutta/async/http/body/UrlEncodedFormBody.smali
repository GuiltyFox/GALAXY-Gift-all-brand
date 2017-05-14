.class public Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;
.super Ljava/lang/Object;
.source "UrlEncodedFormBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/koushikdutta/async/http/Multimap;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->a:Lcom/koushikdutta/async/http/Multimap;

    return-object p1
.end method

.method private d()V
    .registers 7

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    :try_start_6
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->a:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Multimap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 36
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 38
    if-nez v1, :cond_26

    .line 39
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_26
    const/4 v1, 0x0

    .line 42
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_48} :catch_49

    goto :goto_d

    .line 48
    :catch_49
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 46
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->b:[B
    :try_end_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_5d} :catch_49

    .line 51
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string/jumbo v0, "application/x-www-form-urlencoded; charset=utf-8"

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 68
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 69
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;-><init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 75
    new-instance v1, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;-><init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 91
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->b:[B

    if-nez v0, :cond_7

    .line 56
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->d()V

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->b:[B

    invoke-static {p2, v0, p3}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 58
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->b:[B

    if-nez v0, :cond_7

    .line 104
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->d()V

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->b:[B

    array-length v0, v0

    return v0
.end method
