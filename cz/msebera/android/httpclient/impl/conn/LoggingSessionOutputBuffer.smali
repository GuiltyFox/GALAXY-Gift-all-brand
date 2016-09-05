.class public Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionOutputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionOutputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private final b:Lcz/msebera/android/httpclient/impl/conn/Wire;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/impl/conn/Wire;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 64
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    .line 65
    if-eqz p3, :cond_c

    :goto_9
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    .line 66
    return-void

    .line 65
    :cond_c
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 95
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(I)V

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a(I)V

    .line 84
    :cond_12
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .registers 6

    .prologue
    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 100
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a([B)V

    .line 104
    :cond_3a
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a([B)V

    .line 112
    :cond_2c
    return-void
.end method

.method public a([BII)V
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->b:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a([BII)V

    .line 77
    :cond_12
    return-void
.end method

.method public b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionOutputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method
