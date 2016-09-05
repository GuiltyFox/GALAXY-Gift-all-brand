.class public final Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;
.super Ljava/lang/Object;
.source "SpscUnboundedAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:I

.field static final c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field static final k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/lang/Object;


# instance fields
.field protected volatile b:J

.field protected d:I

.field protected e:J

.field protected f:I

.field protected g:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-string/jumbo v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a:I

    .line 36
    const-class v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    const-string/jumbo v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 46
    const-class v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    const-string/jumbo v1, "j"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lrx/internal/util/unsafe/Pow2;->a(I)I

    move-result v0

    .line 52
    add-int/lit8 v1, v0, -0x1

    .line 53
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 54
    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->f:I

    .line 56
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(I)V

    .line 57
    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 58
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->h:I

    .line 59
    add-int/lit8 v0, v1, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->e:J

    .line 60
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(J)V

    .line 61
    return-void
.end method

.method private static final a(JI)I
    .registers 5

    .prologue
    .line 247
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(I)I

    move-result v0

    return v0
.end method

.method private a()J
    .registers 3

    .prologue
    .line 223
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b:J

    return-wide v0
.end method

.method private static final a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 151
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v2

    .line 152
    invoke-static {p1, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 153
    if-nez v1, :cond_e

    .line 158
    :goto_d
    return-object v0

    .line 156
    :cond_e
    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(J)V

    .line 157
    invoke-static {p1, v2, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    move-object v0, v1

    .line 158
    goto :goto_d
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(I)I

    move-result v0

    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 219
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->d:I

    .line 220
    return-void
.end method

.method private a(J)V
    .registers 4

    .prologue
    .line 239
    sget-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 240
    return-void
.end method

.method private static final a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 106
    iput-object v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 107
    add-long v2, p2, p6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->e:J

    .line 108
    add-long v2, p2, v4

    invoke-direct {p0, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(J)V

    .line 109
    invoke-static {v1, p4, p5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 110
    invoke-direct {p0, p1, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 111
    sget-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->l:Ljava/lang/Object;

    invoke-static {p1, p4, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .prologue
    .line 97
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(J)V

    .line 98
    invoke-static {p1, p5, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method private static final b(I)I
    .registers 1

    .prologue
    .line 250
    return p0
.end method

.method private b()J
    .registers 3

    .prologue
    .line 227
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->j:J

    return-wide v0
.end method

.method private b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 190
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v0

    .line 191
    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .registers 4

    .prologue
    .line 243
    sget-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 244
    return-void
.end method

.method private c()J
    .registers 3

    .prologue
    .line 231
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b:J

    return-wide v0
.end method

.method private d()J
    .registers 3

    .prologue
    .line 235
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->j:J

    return-wide v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 184
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 215
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_8

    .line 71
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 74
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 75
    invoke-direct/range {p0 .. p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->c()J

    move-result-wide v6

    .line 76
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->f:I

    .line 77
    invoke-static {v6, v7, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v8

    .line 78
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->e:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_29

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 79
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    .line 91
    :goto_28
    return v2

    .line 81
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->d:I

    .line 83
    int-to-long v10, v3

    add-long/2addr v10, v6

    invoke-static {v10, v11, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v5

    .line 84
    invoke-static {v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4b

    .line 85
    int-to-long v2, v3

    add-long/2addr v2, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->e:J

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 86
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    goto :goto_28

    .line 87
    :cond_4b
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    invoke-static {v10, v11, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v3

    invoke-static {v4, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_61

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 88
    invoke-direct/range {v3 .. v8}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v2

    goto :goto_28

    .line 90
    :cond_61
    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v12, v6

    move v14, v8

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v17}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 91
    const/4 v2, 0x1

    goto :goto_28
.end method

.method public final peek()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 171
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->d()J

    move-result-wide v2

    .line 172
    iget v4, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->h:I

    .line 173
    invoke-static {v2, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v0

    .line 174
    invoke-static {v1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 175
    sget-object v5, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->l:Ljava/lang/Object;

    if-ne v0, v5, :cond_1c

    .line 176
    invoke-direct {p0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    .line 179
    :cond_1c
    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v3, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->i:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 132
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->d()J

    move-result-wide v4

    .line 133
    iget v6, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->h:I

    .line 134
    invoke-static {v4, v5, v6}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(JI)I

    move-result v7

    .line 135
    invoke-static {v3, v7}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    sget-object v2, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->l:Ljava/lang/Object;

    if-ne v0, v2, :cond_24

    const/4 v2, 0x1

    .line 137
    :goto_16
    if-eqz v0, :cond_26

    if-nez v2, :cond_26

    .line 138
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b(J)V

    .line 139
    invoke-static {v3, v7, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 145
    :goto_23
    return-object v0

    .line 136
    :cond_24
    const/4 v2, 0x0

    goto :goto_16

    .line 141
    :cond_26
    if-eqz v2, :cond_31

    .line 142
    invoke-direct {p0, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5, v6}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    goto :goto_23

    :cond_31
    move-object v0, v1

    .line 145
    goto :goto_23
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 7

    .prologue
    .line 202
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b()J

    move-result-wide v0

    .line 205
    :goto_4
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->a()J

    move-result-wide v4

    .line 206
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->b()J

    move-result-wide v2

    .line 207
    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 208
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_14
    move-wide v0, v2

    .line 210
    goto :goto_4
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
