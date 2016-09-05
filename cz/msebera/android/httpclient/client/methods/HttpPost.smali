.class public Lcz/msebera/android/httpclient/client/methods/HttpPost;
.super Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPost.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "POST"

    return-object v0
.end method
