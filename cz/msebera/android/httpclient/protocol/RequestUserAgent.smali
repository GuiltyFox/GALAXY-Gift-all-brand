.class public Lcz/msebera/android/httpclient/protocol/RequestUserAgent;
.super Ljava/lang/Object;
.source "RequestUserAgent.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;->a:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 63
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "User-Agent"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_1f

    .line 68
    const-string/jumbo v0, "http.useragent"

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    :cond_1f
    if-nez v0, :cond_23

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;->a:Ljava/lang/String;

    .line 73
    :cond_23
    if-eqz v0, :cond_2b

    .line 74
    const-string/jumbo v1, "User-Agent"

    invoke-interface {p1, v1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2b
    return-void
.end method
