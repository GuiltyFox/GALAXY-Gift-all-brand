.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Scheduler$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 39
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    .line 40
    return-void
.end method

.method private constructor <init>(IIJ)V
    .registers 6

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lrx/internal/util/ObjectPool;->b:I

    .line 56
    iput p2, p0, Lrx/internal/util/ObjectPool;->c:I

    .line 57
    iput-wide p3, p0, Lrx/internal/util/ObjectPool;->d:J

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->a(I)V

    .line 62
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->b()V

    .line 63
    return-void
.end method

.method static synthetic a(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 142
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 143
    new-instance v0, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v1, p0, Lrx/internal/util/ObjectPool;->c:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    .line 148
    :goto_15
    const/4 v0, 0x0

    :goto_16
    if-ge v0, p1, :cond_2c

    .line 149
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 145
    :cond_24
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    goto :goto_15

    .line 151
    :cond_2c
    return-void
.end method

.method static synthetic b(Lrx/internal/util/ObjectPool;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lrx/internal/util/ObjectPool;->b:I

    return v0
.end method

.method static synthetic c(Lrx/internal/util/ObjectPool;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lrx/internal/util/ObjectPool;->c:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 74
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->c()Ljava/lang/Object;

    move-result-object v0

    .line 77
    :cond_c
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_3

    .line 92
    :goto_2
    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()V
    .registers 8

    .prologue
    .line 107
    invoke-static {}, Lrx/schedulers/Schedulers;->a()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->a()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 109
    new-instance v1, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v1, p0}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;)V

    iget-wide v2, p0, Lrx/internal/util/ObjectPool;->d:J

    iget-wide v4, p0, Lrx/internal/util/ObjectPool;->d:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->a(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 132
    :goto_1f
    return-void

    .line 130
    :cond_20
    invoke-virtual {v0}, Lrx/Scheduler$Worker;->b()V

    goto :goto_1f
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
