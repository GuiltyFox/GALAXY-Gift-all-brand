.class final Lcom/koushikdutta/async/http/spdy/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    return-void
.end method


# virtual methods
.method public a(III)Lcom/koushikdutta/async/http/spdy/Settings;
    .registers 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    .line 104
    :goto_5
    return-object p0

    .line 90
    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 91
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    .line 92
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    .line 93
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    .line 97
    :goto_16
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2c

    .line 98
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    .line 103
    :goto_1f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    aput p3, v0, p1

    goto :goto_5

    .line 95
    :cond_24
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    goto :goto_16

    .line 100
    :cond_2c
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    goto :goto_1f
.end method

.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 5

    .prologue
    .line 218
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    .line 219
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 218
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_e
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->a(III)Lcom/koushikdutta/async/http/spdy/Settings;

    goto :goto_b

    .line 222
    :cond_1a
    return-void
.end method

.method a(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 109
    shl-int v1, v0, p1

    .line 110
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .registers 3

    .prologue
    .line 139
    const/4 v0, 0x2

    .line 140
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method c(I)I
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/Settings;->f(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    .line 122
    :cond_8
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/Settings;->e(I)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x1

    .line 123
    :cond_10
    return v0
.end method

.method public d(I)I
    .registers 4

    .prologue
    .line 181
    const/16 v0, 0x80

    .line 182
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Settings;->d:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method e(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 203
    shl-int v1, v0, p1

    .line 204
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/Settings;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method f(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 209
    shl-int v1, v0, p1

    .line 210
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/Settings;->c:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
