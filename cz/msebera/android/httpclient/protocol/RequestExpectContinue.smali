.class public Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;-><init>(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;->a:Z

    .line 70
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 74
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v0, "Expect"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 77
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_4e

    .line 78
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    move-object v0, p1

    .line 79
    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4e

    .line 82
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4e

    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 83
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.protocol.expect-continue"

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;->a:Z

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_4e

    .line 86
    const-string/jumbo v0, "Expect"

    const-string/jumbo v1, "100-continue"

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_4e
    return-void
.end method
