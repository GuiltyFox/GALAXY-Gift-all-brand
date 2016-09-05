.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;
.super Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;-><init>(I)V

    .line 27
    return-void
.end method
