.class public Lcz/msebera/android/httpclient/client/ClientProtocolException;
.super Ljava/io/IOException;
.source "ClientProtocolException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    return-void
.end method
