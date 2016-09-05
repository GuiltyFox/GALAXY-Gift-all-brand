.class public Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/EofSensor;
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private final b:Lcz/msebera/android/httpclient/io/EofSensor;

.field private final c:Lcz/msebera/android/httpclient/impl/conn/Wire;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/impl/conn/Wire;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 69
    instance-of v0, p1, Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_14

    check-cast p1, Lcz/msebera/android/httpclient/io/EofSensor;

    :goto_b
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->b:Lcz/msebera/android/httpclient/io/EofSensor;

    .line 70
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    .line 71
    if-eqz p3, :cond_16

    :goto_11
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->d:Ljava/lang/String;

    .line 72
    return-void

    .line 69
    :cond_14
    const/4 p1, 0x0

    goto :goto_b

    .line 71
    :cond_16
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_11
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 93
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->b(I)V

    .line 95
    :cond_16
    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 6

    .prologue
    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-ltz v0, :cond_3d

    .line 118
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v1

    sub-int/2addr v1, v0

    .line 119
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->b([B)V

    .line 123
    :cond_3d
    return v0
.end method

.method public a([BII)I
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a([BII)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_15

    if-lez v0, :cond_15

    .line 85
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->c:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->b([BII)V

    .line 87
    :cond_15
    return v0
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->b:Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingSessionInputBuffer;->b:Lcz/msebera/android/httpclient/io/EofSensor;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/EofSensor;->c()Z

    move-result v0

    .line 134
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
