.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_7

    if-nez p3, :cond_d

    .line 88
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_d
    if-gez p2, :cond_18

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_18
    sget-object v0, Lcom/bumptech/glide/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_29
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->b:Ljava/nio/charset/Charset;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    .prologue
    .line 72
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 189
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 190
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 192
    :cond_15
    iput v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    .line 193
    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    .line 194
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 126
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a:Ljava/io/InputStream;

    monitor-enter v3

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    if-nez v0, :cond_15

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_12
    move-exception v0

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    .line 134
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    iget v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    if-lt v0, v1, :cond_1e

    .line 135
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c()V

    .line 138
    :cond_1e
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    :goto_20
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    if-eq v2, v0, :cond_58

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_55

    .line 140
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    if-eq v2, v0, :cond_53

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_53

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 141
    :goto_3b
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    .line 143
    monitor-exit v3

    .line 172
    :goto_52
    return-object v0

    :cond_53
    move v1, v2

    .line 140
    goto :goto_3b

    .line 138
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 148
    :cond_58
    new-instance v1, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    .line 161
    :cond_64
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c()V

    .line 166
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    :goto_78
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    if-eq v0, v2, :cond_64

    .line 167
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_9b

    .line 168
    iget v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    if-eq v0, v2, :cond_91

    .line 169
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    iget v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    :cond_91
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->d:I

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_15 .. :try_end_9a} :catchall_12

    goto :goto_52

    .line 166
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_78
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 180
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public close()V
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    if-eqz v0, :cond_f

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->c:[B

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_f
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
