.class public Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "Wait for continue time"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a:I

    .line 72
    return-void
.end method

.method private static a(Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .registers 2

    .prologue
    .line 140
    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 143
    :goto_3
    return-void

    .line 141
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5

    .prologue
    .line 117
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    :try_start_12
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->b(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1c

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->c(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_12 .. :try_end_1b} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1b} :catch_27

    move-result-object v0

    .line 125
    :cond_1c
    return-object v0

    .line 126
    :catch_1d
    move-exception v0

    .line 127
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 128
    throw v0

    .line 129
    :catch_22
    move-exception v0

    .line 130
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 131
    throw v0

    .line 132
    :catch_27
    move-exception v0

    .line 133
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 134
    throw v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 161
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v0, "http.request"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 166
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 304
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "http.response"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 309
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 91
    const-string/jumbo v1, "HEAD"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 95
    :cond_12
    :goto_12
    return v0

    .line 94
    :cond_13
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    .line 95
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_12

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_12

    const/16 v2, 0x130

    if-eq v1, v2, :cond_12

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_12
.end method

.method protected b(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 194
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v0, "http.connection"

    invoke-interface {p3, v0, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string/jumbo v0, "http.request_sent"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->a(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 204
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_a4

    .line 208
    const/4 v2, 0x1

    .line 210
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    move-object v0, p1

    .line 211
    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    .line 212
    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 214
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->c_()V

    .line 217
    iget v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a:I

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 218
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    .line 219
    invoke-virtual {p0, p1, v3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 220
    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->a(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 222
    :cond_5a
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 223
    const/16 v4, 0xc8

    if-ge v0, v4, :cond_9d

    .line 224
    const/16 v4, 0x64

    if-eq v0, v4, :cond_88

    .line 225
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    move-object v0, v1

    move v1, v2

    .line 235
    :goto_8a
    if-eqz v1, :cond_91

    .line 236
    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 239
    :cond_91
    :goto_91
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->c_()V

    .line 240
    const-string/jumbo v1, "http.request_sent"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    return-object v0

    .line 231
    :cond_9d
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v3

    goto :goto_8a

    :cond_a1
    move-object v0, v1

    move v1, v2

    goto :goto_8a

    :cond_a4
    move-object v0, v1

    goto :goto_91
.end method

.method protected c(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 7

    .prologue
    .line 263
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    const/4 v1, 0x0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_14
    if-eqz v1, :cond_1a

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_30

    .line 271
    :cond_1a
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    .line 272
    invoke-virtual {p0, p1, v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 273
    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HttpClientConnection;->a(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 275
    :cond_27
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    goto :goto_14

    .line 279
    :cond_30
    return-object v1
.end method
