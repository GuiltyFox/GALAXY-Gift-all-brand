.class public final Lokhttp3/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    return-void
.end method


# virtual methods
.method a(III)Lokhttp3/internal/framed/Settings;
    .registers 7

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    .line 108
    :goto_5
    return-object p0

    .line 94
    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 95
    iget v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    .line 96
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    .line 97
    iget v1, p0, Lokhttp3/internal/framed/Settings;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->b:I

    .line 101
    :goto_16
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2c

    .line 102
    iget v1, p0, Lokhttp3/internal/framed/Settings;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->c:I

    .line 107
    :goto_1f
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    aput p3, v0, p1

    goto :goto_5

    .line 99
    :cond_24
    iget v1, p0, Lokhttp3/internal/framed/Settings;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/framed/Settings;->b:I

    goto :goto_16

    .line 104
    :cond_2c
    iget v1, p0, Lokhttp3/internal/framed/Settings;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->c:I

    goto :goto_1f
.end method

.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iput v1, p0, Lokhttp3/internal/framed/Settings;->c:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->b:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    .line 86
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 87
    return-void
.end method

.method a(Lokhttp3/internal/framed/Settings;)V
    .registers 5

    .prologue
    .line 234
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    .line 235
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 234
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_e
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    goto :goto_b

    .line 238
    :cond_1a
    return-void
.end method

.method a(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 113
    shl-int v1, v0, p1

    .line 114
    iget v2, p0, Lokhttp3/internal/framed/Settings;->a:I

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
    .line 132
    iget v0, p0, Lokhttp3/internal/framed/Settings;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x2

    .line 144
    iget v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

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
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->h(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    .line 126
    :cond_8
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->g(I)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x1

    .line 127
    :cond_10
    return v0
.end method

.method d(I)I
    .registers 4

    .prologue
    .line 168
    const/16 v0, 0x10

    .line 169
    iget v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method e(I)I
    .registers 4

    .prologue
    .line 180
    const/16 v0, 0x20

    .line 181
    iget v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method f(I)I
    .registers 4

    .prologue
    .line 197
    const/16 v0, 0x80

    .line 198
    iget v1, p0, Lokhttp3/internal/framed/Settings;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->d:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method g(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 219
    shl-int v1, v0, p1

    .line 220
    iget v2, p0, Lokhttp3/internal/framed/Settings;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method h(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 225
    shl-int v1, v0, p1

    .line 226
    iget v2, p0, Lokhttp3/internal/framed/Settings;->c:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
