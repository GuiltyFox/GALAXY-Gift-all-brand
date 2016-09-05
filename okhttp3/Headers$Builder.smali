.class public final Lokhttp3/Headers$Builder;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lokhttp3/Headers$Builder;)Ljava/util/List;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/16 v5, 0x1f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 307
    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_25
    if-ge v0, v2, :cond_51

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 311
    if-le v3, v5, :cond_31

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_4e

    .line 312
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected char %#04x at %d in header name: %s"

    new-array v5, v8, [Ljava/lang/Object;

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    .line 312
    invoke-static {v4, v5}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 316
    :cond_51
    if-nez p2, :cond_5c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_5c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_61
    if-ge v0, v2, :cond_90

    .line 318
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 319
    if-le v3, v5, :cond_6d

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_8d

    .line 320
    :cond_6d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    .line 320
    invoke-static {v4, v5}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 324
    :cond_90
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 247
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 248
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 249
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 255
    :goto_1a
    return-object v0

    .line 250
    :cond_1b
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 253
    const-string/jumbo v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    goto :goto_1a

    .line 255
    :cond_30
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 4

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/Headers;
    .registers 3

    .prologue
    .line 337
    new-instance v0, Lokhttp3/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;Lokhttp3/Headers$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 4

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 286
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 287
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    add-int/lit8 v1, v1, -0x2

    .line 285
    :cond_24
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    .line 292
    :cond_28
    return-object p0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lokhttp3/Headers$Builder;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 3

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 302
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 303
    return-object p0
.end method
