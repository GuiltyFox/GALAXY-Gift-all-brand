.class public Lcz/msebera/android/httpclient/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/HttpException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 65
    return-void
.end method
