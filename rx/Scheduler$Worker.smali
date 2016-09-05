.class public abstract Lrx/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 15

    .prologue
    .line 111
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lrx/Scheduler$Worker;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 114
    new-instance v2, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 115
    new-instance v0, Lrx/Scheduler$Worker$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lrx/Scheduler$Worker$1;-><init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V

    .line 126
    new-instance v1, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 128
    invoke-virtual {v2, v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->a(Lrx/Subscription;)V

    .line 129
    invoke-virtual {p0, v0, p2, p3, p6}, Lrx/Scheduler$Worker;->a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->a(Lrx/Subscription;)V

    .line 130
    return-object v2
.end method

.method public abstract a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end method
