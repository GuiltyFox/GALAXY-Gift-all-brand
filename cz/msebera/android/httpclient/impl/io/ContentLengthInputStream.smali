.class public Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private final a:J

.field private b:J

.field private c:Z

.field private d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;J)V
    .registers 6

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 86
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 87
    const-string/jumbo v0, "Content length"

    invoke-static {p2, p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    .line 88
    return-void
.end method


# virtual methods
.method public available()I
    .registers 7

    .prologue
    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v0, v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v0, :cond_19

    .line 117
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    check-cast v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/BufferInfo;->e()I

    move-result v0

    .line 118
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public close()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    if-nez v0, :cond_19

    .line 101
    :try_start_5
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 102
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 103
    :cond_11
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    move-result v1

    if-gez v1, :cond_11

    .line 109
    :cond_17
    iput-boolean v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    .line 112
    :cond_19
    return-void

    .line 109
    :catchall_1a
    move-exception v0

    iput-boolean v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    throw v0
.end method

.method public read()I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 132
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    if-eqz v1, :cond_e

    .line 133
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_e
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_17

    .line 149
    :goto_16
    return v0

    .line 139
    :cond_17
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a()I

    move-result v1

    .line 140
    if-ne v1, v0, :cond_50

    .line 141
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_57

    .line 142
    new-instance v0, Lcz/msebera/android/httpclient/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_50
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    :cond_57
    move v0, v1

    .line 149
    goto :goto_16
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    .prologue
    const/4 v0, -0x1

    .line 166
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->c:Z

    if-eqz v1, :cond_e

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_e
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_17

    .line 187
    :goto_16
    return v0

    .line 175
    :cond_17
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_27

    .line 176
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 178
    :cond_27
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->d:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a([BII)I

    move-result v1

    .line 179
    if-ne v1, v0, :cond_60

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_60

    .line 180
    new-instance v0, Lcz/msebera/android/httpclient/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_60
    if-lez v1, :cond_68

    .line 185
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    :cond_68
    move v0, v1

    .line 187
    goto :goto_16
.end method

.method public skip(J)J
    .registers 14

    .prologue
    const-wide/16 v0, 0x0

    .line 213
    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 230
    :goto_6
    return-wide v0

    .line 216
    :cond_7
    const/16 v2, 0x800

    new-array v6, v2, [B

    .line 219
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->a:J

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->b:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v4, v2

    move-wide v2, v0

    .line 222
    :goto_16
    cmp-long v7, v4, v0

    if-lez v7, :cond_29

    .line 223
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v7

    .line 224
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2b

    :cond_29
    move-wide v0, v2

    .line 230
    goto :goto_6

    .line 227
    :cond_2b
    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 228
    int-to-long v8, v7

    sub-long/2addr v4, v8

    .line 229
    goto :goto_16
.end method
