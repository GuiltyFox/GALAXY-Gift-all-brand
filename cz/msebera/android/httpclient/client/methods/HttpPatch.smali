.class public Lcz/msebera/android/httpclient/client/methods/HttpPatch;
.super Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;->setURI(Ljava/net/URI;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string/jumbo v0, "PATCH"

    return-object v0
.end method
