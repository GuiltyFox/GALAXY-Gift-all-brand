.class public Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "ConnectTimeoutException.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 66
    return-void
.end method
