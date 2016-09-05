.class public Lcz/msebera/android/httpclient/client/methods/HttpGet;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "HttpGet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string/jumbo v0, "GET"

    return-object v0
.end method
