.class abstract Lrx/internal/util/unsafe/SpscArrayQueueProducerFields;
.super Lrx/internal/util/unsafe/SpscArrayQueueL1Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final f:J


# instance fields
.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-class v0, Lrx/internal/util/unsafe/SpscArrayQueueProducerFields;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/SpscArrayQueueProducerFields;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL1Pad;-><init>(I)V

    .line 45
    return-void
.end method
