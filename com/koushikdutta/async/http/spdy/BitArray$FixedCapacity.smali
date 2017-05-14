.class public final Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/BitArray;


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    return-void
.end method

.method private static e(I)I
    .registers 6

    .prologue
    .line 70
    if-ltz p0, :cond_6

    const/16 v0, 0x3f

    if-le p0, v0, :cond_1d

    .line 71
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input must be between 0 and 63: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1d
    return p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    .line 43
    return-void
.end method

.method public a(I)V
    .registers 7

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->e(I)I

    move-result v4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    .line 47
    return-void
.end method

.method public b()Lcom/koushikdutta/async/http/spdy/BitArray;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/spdy/BitArray$VariableCapacity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/spdy/BitArray$VariableCapacity;-><init>(Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;Lcom/koushikdutta/async/http/spdy/BitArray$1;)V

    return-object v0
.end method

.method public b(I)V
    .registers 7

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->e(I)I

    move-result v4

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    .line 51
    return-void
.end method

.method public c(I)Z
    .registers 8

    .prologue
    const-wide/16 v4, 0x1

    .line 54
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->e(I)I

    move-result v2

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->e(I)I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
