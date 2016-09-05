.class public Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;
.super Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    const/16 v0, 0x400

    .line 63
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 64
    const-string/jumbo v1, "Socket"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    if-gez p2, :cond_1d

    .line 67
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v1

    .line 69
    :goto_11
    if-ge v1, v0, :cond_1b

    .line 72
    :goto_13
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;->a(Ljava/io/OutputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V

    .line 73
    return-void

    :cond_1b
    move v0, v1

    goto :goto_13

    :cond_1d
    move v1, p2

    goto :goto_11
.end method
