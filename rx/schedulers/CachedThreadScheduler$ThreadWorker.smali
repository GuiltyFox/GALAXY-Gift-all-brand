.class final Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->c:J

    .line 227
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .prologue
    .line 234
    iput-wide p1, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->c:J

    .line 235
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 230
    iget-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->c:J

    return-wide v0
.end method
