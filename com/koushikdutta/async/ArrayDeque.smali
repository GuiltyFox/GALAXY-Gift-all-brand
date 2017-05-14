.class public Lcom/koushikdutta/async/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/koushikdutta/async/Deque;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/koushikdutta/async/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private transient b:[Ljava/lang/Object;

.field private transient c:I

.field private transient d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 163
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/ArrayDeque;)I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    return v0
.end method

.method private a(I)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 512
    invoke-direct {p0}, Lcom/koushikdutta/async/ArrayDeque;->j()V

    .line 513
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    .line 514
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 515
    iget v4, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 516
    iget v5, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    .line 517
    sub-int v6, p1, v4

    and-int/2addr v6, v3

    .line 518
    sub-int v7, v5, p1

    and-int/2addr v7, v3

    .line 521
    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_1f

    .line 522
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 525
    :cond_1f
    if-ge v6, v7, :cond_40

    .line 526
    if-gt v4, p1, :cond_31

    .line 527
    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    :goto_28
    const/4 v1, 0x0

    aput-object v1, v2, v4

    .line 534
    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 546
    :goto_30
    return v0

    .line 529
    :cond_31
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    aget-object v1, v2, v3

    aput-object v1, v2, v0

    .line 531
    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28

    .line 537
    :cond_40
    if-ge p1, v5, :cond_4d

    .line 538
    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    :goto_4b
    move v0, v1

    .line 546
    goto :goto_30

    .line 541
    :cond_4d
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    aget-object v4, v2, v0

    aput-object v4, v2, v3

    .line 543
    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    goto :goto_4b
.end method

.method static synthetic a(Lcom/koushikdutta/async/ArrayDeque;I)Z
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->a(I)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-ge v0, v1, :cond_13

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_12
    :goto_12
    return-object p1

    .line 150
    :cond_13
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-le v0, v1, :cond_12

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    sub-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12
.end method

.method static synthetic b(Lcom/koushikdutta/async/ArrayDeque;)I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    return v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/ArrayDeque;)[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 125
    sget-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->a:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_11
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 127
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 128
    sub-int v2, v1, v0

    .line 129
    shl-int/lit8 v3, v1, 0x1

    .line 130
    if-gez v3, :cond_25

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_25
    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v4, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v4, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    .line 136
    iput v5, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 137
    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    .line 138
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    .line 494
    sget-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_12
    sget-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->a:Z

    if-nez v0, :cond_24

    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aget-object v0, v0, v1

    if-nez v0, :cond_56

    .line 498
    :cond_24
    sget-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->a:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_3e
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_24

    :cond_56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :cond_5c
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->b()Ljava/lang/Object;

    move-result-object v0

    .line 254
    if-nez v0, :cond_c

    .line 255
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 256
    :cond_c
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_b

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aput-object p1, v0, v1

    .line 205
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-ne v0, v1, :cond_24

    .line 206
    invoke-direct {p0}, Lcom/koushikdutta/async/ArrayDeque;->i()V

    .line 207
    :cond_24
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->b(Ljava/lang/Object;)V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 270
    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 271
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 273
    if-nez v1, :cond_a

    .line 277
    :goto_9
    return-object v0

    .line 275
    :cond_a
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 276
    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    move-object v0, v1

    .line 277
    goto :goto_9
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_b

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    aput-object p1, v0, v1

    .line 221
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-ne v0, v1, :cond_24

    .line 222
    invoke-direct {p0}, Lcom/koushikdutta/async/ArrayDeque;->i()V

    .line 223
    :cond_24
    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aget-object v0, v0, v1

    .line 295
    if-nez v0, :cond_e

    .line 296
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 297
    :cond_e
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->b(Ljava/lang/Object;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 712
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 713
    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    .line 714
    if-eq v0, v1, :cond_1a

    .line 715
    const/4 v2, 0x0

    iput v2, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    iput v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 717
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 719
    :cond_10
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 721
    if-ne v0, v1, :cond_10

    .line 723
    :cond_1a
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->h()Lcom/koushikdutta/async/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 677
    if-nez p1, :cond_5

    move v0, v1

    .line 687
    :goto_4
    return v0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 680
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 682
    :goto_c
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1e

    .line 683
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 684
    const/4 v0, 0x1

    goto :goto_4

    .line 685
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_c

    :cond_1e
    move v0, v1

    .line 687
    goto :goto_4
.end method

.method public d()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 306
    if-nez v0, :cond_16

    .line 307
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 308
    :cond_16
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 336
    if-nez p1, :cond_5

    move v0, v1

    .line 348
    :goto_4
    return v0

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 339
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 341
    :goto_c
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    .line 342
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 343
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a(I)Z

    .line 344
    const/4 v0, 0x1

    goto :goto_4

    .line 346
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_c

    :cond_21
    move v0, v1

    .line 348
    goto :goto_4
.end method

.method public e()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aget-object v0, v0, v1

    .line 314
    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->a(Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 320
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/koushikdutta/async/ArrayDeque;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 800
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/ArrayDeque;

    .line 801
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_13

    .line 802
    return-object v0

    .line 804
    :catch_13
    move-exception v0

    .line 805
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 567
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;-><init>(Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 558
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->d:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    .line 781
    array-length v0, p1

    if-ge v0, v1, :cond_21

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 784
    :goto_17
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 785
    array-length v2, v0

    if-le v2, v1, :cond_20

    .line 786
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 787
    :cond_20
    return-object v0

    :cond_21
    move-object v0, p1

    goto :goto_17
.end method
