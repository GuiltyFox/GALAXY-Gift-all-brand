.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser",
        "<",
        "Lcz/msebera/android/httpclient/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final c:Lcz/msebera/android/httpclient/HttpResponseFactory;

.field private final d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 77
    const-string/jumbo v0, "Response factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 79
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 80
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 135
    move v0, v1

    .line 139
    :goto_3
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 140
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v2

    .line 141
    if-ne v2, v6, :cond_1b

    if-nez v0, :cond_1b

    .line 143
    new-instance v0, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string/jumbo v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1b
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 146
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->b:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v4, v5, v3}, Lcz/msebera/android/httpclient/message/LineParser;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->b:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v1, v3}, Lcz/msebera/android/httpclient/message/LineParser;->c(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->a(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0

    .line 149
    :cond_40
    if-eq v2, v6, :cond_4a

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0, v2, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 151
    :cond_4a
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    const-string/jumbo v1, "The server failed to respond with a valid HTTP response"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_53
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 155
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->d:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 157
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    .line 158
    goto :goto_3
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)Z
    .registers 4

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .registers 3

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParser;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method
