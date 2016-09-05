.class public Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;
.super Ljava/lang/Object;
.source "RequestClientConnControl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 59
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 6

    .prologue
    .line 63
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 67
    const-string/jumbo v0, "Proxy-Connection"

    const-string/jumbo v1, "Keep-Alive"

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_20
    :goto_20
    return-void

    .line 71
    :cond_21
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v0

    .line 75
    if-nez v0, :cond_34

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Connection route not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_20

    .line 80
    :cond_34
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 81
    :cond_41
    const-string/jumbo v1, "Connection"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 82
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_53
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v0

    if-nez v0, :cond_20

    .line 86
    const-string/jumbo v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 87
    const-string/jumbo v0, "Proxy-Connection"

    const-string/jumbo v1, "Keep-Alive"

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
