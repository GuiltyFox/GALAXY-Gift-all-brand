.class abstract Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/MpmcArrayQueueL2Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    const-class v0, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;

    const-string/jumbo v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/MpmcArrayQueueL2Pad;-><init>(I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected final a()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;->consumerIndex:J

    return-wide v0
.end method

.method protected final b(JJ)Z
    .registers 14

    .prologue
    .line 69
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
