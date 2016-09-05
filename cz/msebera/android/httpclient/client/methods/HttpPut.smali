.class public Lcz/msebera/android/httpclient/client/methods/HttpPut;
.super Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPut.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPut;->setURI(Ljava/net/URI;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string/jumbo v0, "PUT"

    return-object v0
.end method
