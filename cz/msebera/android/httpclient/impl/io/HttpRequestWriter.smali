.class public Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter",
        "<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcz/msebera/android/httpclient/HttpMessage;)V
    .registers 2

    .prologue
    .line 46
    check-cast p1, Lcz/msebera/android/httpclient/HttpRequest;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->a(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->c:Lcz/msebera/android/httpclient/message/LineFormatter;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/message/LineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    .line 60
    return-void
.end method
