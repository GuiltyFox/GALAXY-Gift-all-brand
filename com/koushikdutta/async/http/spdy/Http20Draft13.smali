.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/Variant;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/koushikdutta/async/http/spdy/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a:Ljava/util/logging/Logger;

    .line 48
    const-string/jumbo v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic a(SBS)S
    .registers 4

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b(SBS)S

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/koushikdutta/async/http/spdy/ByteString;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private static b(SBS)S
    .registers 7

    .prologue
    .line 644
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    add-int/lit8 v0, p0, -0x1

    int-to-short p0, v0

    .line 645
    :cond_7
    if-le p2, p0, :cond_22

    .line 646
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 648
    :cond_22
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .prologue
    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 639
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;
    .registers 6

    .prologue
    .line 80
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;IZ)V

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;
    .registers 4

    .prologue
    .line 85
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;-><init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V

    return-object v0
.end method
