.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;
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
.field private final a:Lcz/msebera/android/httpclient/HttpResponseFactory;

.field private final c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 81
    const-string/jumbo v0, "Response factory"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponseFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->a:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    .line 132
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 133
    new-instance v0, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string/jumbo v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_17
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 137
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->b:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->c:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v1, v2, v0}, Lcz/msebera/android/httpclient/message/LineParser;->c(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->a:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->a(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method
