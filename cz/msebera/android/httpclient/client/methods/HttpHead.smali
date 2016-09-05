.class public Lcz/msebera/android/httpclient/client/methods/HttpHead;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "HttpHead.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string/jumbo v0, "HEAD"

    return-object v0
.end method
