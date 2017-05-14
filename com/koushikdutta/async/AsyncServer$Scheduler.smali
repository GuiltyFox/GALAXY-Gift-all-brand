.class Lcom/koushikdutta/async/AsyncServer$Scheduler;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/koushikdutta/async/AsyncServer$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 217
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$Scheduler;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I
    .registers 7

    .prologue
    .line 223
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_9
    return v0

    .line 225
    :cond_a
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 226
    const/4 v0, 0x1

    goto :goto_9

    .line 227
    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 216
    check-cast p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I

    move-result v0

    return v0
.end method
