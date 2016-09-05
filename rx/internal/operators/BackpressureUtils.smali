.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method public static a(JJ)J
    .registers 8

    .prologue
    .line 99
    add-long v0, p0, p2

    .line 100
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 101
    const-wide v0, 0x7fffffffffffffffL

    .line 103
    :cond_d
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 8

    .prologue
    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 69
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->a(JJ)J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    return-wide v0
.end method
