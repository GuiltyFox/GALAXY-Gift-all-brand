.class public Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "GZIPInputFilter.java"


# instance fields
.field d:Z

.field protected e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 36
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 39
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->d:Z

    .line 40
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    .line 37
    return-void
.end method

.method static a([BILjava/nio/ByteOrder;)S
    .registers 5

    .prologue
    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 19
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 21
    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_10
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->d:Z

    if-eqz v0, :cond_14

    .line 50
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 51
    const/16 v1, 0xa

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->a(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 142
    :goto_13
    return-void

    .line 140
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_13
.end method
