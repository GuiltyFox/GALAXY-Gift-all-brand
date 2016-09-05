.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lokhttp3/Headers$Builder;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lokhttp3/Headers$Builder;->a(Lokhttp3/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/Headers$Builder;->a(Lokhttp3/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Headers$Builder;Lokhttp3/Headers$1;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_15

    .line 177
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 178
    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    .line 181
    :goto_11
    return-object v0

    .line 176
    :cond_12
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 181
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static varargs a([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 189
    if-nez p0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "namesAndValues == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_d
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1b
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    .line 196
    :goto_22
    array-length v3, v0

    if-ge v1, v3, :cond_3d

    .line 197
    aget-object v3, v0, v1

    if-nez v3, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_32
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3d
    move v1, v2

    .line 202
    :goto_3e
    array-length v3, v0

    if-ge v1, v3, :cond_81

    .line 203
    aget-object v3, v0, v1

    .line 204
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    .line 205
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_59

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_7e

    .line 206
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_7e
    add-int/lit8 v1, v1, 0x2

    goto :goto_3e

    .line 210
    :cond_81
    new-instance v1, Lokhttp3/Headers;

    invoke-direct {v1, v0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Lokhttp3/Headers;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_b

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()Lokhttp3/Headers$Builder;
    .registers 4

    .prologue
    .line 113
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 114
    invoke-static {v0}, Lokhttp3/Headers$Builder;->a(Lokhttp3/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 115
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_9
    if-ge v1, v2, :cond_27

    .line 102
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 103
    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    :cond_1d
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 107
    :cond_27
    if-eqz v0, :cond_2e

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 107
    :goto_2d
    return-object v0

    .line 109
    :cond_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 145
    instance-of v0, p1, Lokhttp3/Headers;

    if-eqz v0, :cond_12

    check-cast p1, Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Headers;->a:[Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    .line 146
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 145
    :goto_11
    return v0

    .line 146
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lokhttp3/Headers;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_2c

    .line 156
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 158
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
