.class Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "RequestBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 325
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;->a:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;->a:Ljava/lang/String;

    return-object v0
.end method
