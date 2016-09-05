.class Lrx/Scheduler$Worker$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Scheduler$Worker;->a(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic c:Lrx/functions/Action0;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V
    .registers 10

    .prologue
    .line 115
    iput-object p1, p0, Lrx/Scheduler$Worker$1;->f:Lrx/Scheduler$Worker;

    iput-object p2, p0, Lrx/Scheduler$Worker$1;->b:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p3, p0, Lrx/Scheduler$Worker$1;->c:Lrx/functions/Action0;

    iput-wide p4, p0, Lrx/Scheduler$Worker$1;->d:J

    iput-wide p6, p0, Lrx/Scheduler$Worker$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    .line 119
    iget-object v0, p0, Lrx/Scheduler$Worker$1;->b:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->c()Z

    move-result v0

    if-nez v0, :cond_34

    .line 120
    iget-object v0, p0, Lrx/Scheduler$Worker$1;->c:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->a()V

    .line 121
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->d:J

    iget-wide v2, p0, Lrx/Scheduler$Worker$1;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/Scheduler$Worker$1;->a:J

    iget-wide v4, p0, Lrx/Scheduler$Worker$1;->e:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Lrx/Scheduler$Worker$1;->b:Lrx/subscriptions/MultipleAssignmentSubscription;

    iget-object v3, p0, Lrx/Scheduler$Worker$1;->f:Lrx/Scheduler$Worker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/Scheduler$Worker$1;->f:Lrx/Scheduler$Worker;

    invoke-virtual {v5}, Lrx/Scheduler$Worker;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lrx/Scheduler$Worker;->a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->a(Lrx/Subscription;)V

    .line 124
    :cond_34
    return-void
.end method
