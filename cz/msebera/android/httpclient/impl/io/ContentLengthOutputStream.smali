.class public Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private final b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;J)V
    .registers 6

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->d:Z

    .line 82
    const-string/jumbo v0, "Session output buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 83
    const-string/jumbo v0, "Content length"

    invoke-static {p2, p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->b:J

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->d:Z

    if-nez v0, :cond_c

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->d:Z

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 97
    :cond_c
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 102
    return-void
.end method

.method public write(I)V
    .registers 6

    .prologue
    .line 127
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->d:Z

    if-eqz v0, :cond_d

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_d
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(I)V

    .line 132
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    .line 134
    :cond_21
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->write([BII)V

    .line 123
    return-void
.end method

.method public write([BII)V
    .registers 8

    .prologue
    .line 106
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->d:Z

    if-eqz v0, :cond_d

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_d
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 110
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->b:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    sub-long/2addr v0, v2

    .line 112
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_20

    .line 113
    long-to-int p3, v0

    .line 115
    :cond_20
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 116
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;->c:J

    .line 118
    :cond_2b
    return-void
.end method
