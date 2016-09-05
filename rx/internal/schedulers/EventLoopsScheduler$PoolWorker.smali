.class final Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "EventLoopsScheduler.java"


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 179
    return-void
.end method
