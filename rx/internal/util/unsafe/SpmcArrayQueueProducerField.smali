.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-class v0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final b()J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method

.method protected final d(J)V
    .registers 10

    .prologue
    .line 39
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 40
    return-void
.end method
