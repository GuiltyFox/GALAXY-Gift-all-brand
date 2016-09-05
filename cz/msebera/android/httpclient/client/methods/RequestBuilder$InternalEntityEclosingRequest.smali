.class Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;
.super Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.source "RequestBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 341
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;->a:Ljava/lang/String;

    .line 342
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;->a:Ljava/lang/String;

    return-object v0
.end method
