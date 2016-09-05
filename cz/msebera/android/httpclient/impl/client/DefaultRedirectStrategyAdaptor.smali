.class Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategyAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/client/RedirectHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/client/RedirectHandler;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcz/msebera/android/httpclient/client/RedirectHandler;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

.method public b(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .registers 7

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 69
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 73
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_1c
.end method
