.class Lcom/squareup/picasso/Picasso$CleanupThread;
.super Ljava/lang/Thread;
.source "Picasso.java"


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->a:Ljava/lang/ref/ReferenceQueue;

    .line 598
    iput-object p2, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->b:Landroid/os/Handler;

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso$CleanupThread;->setDaemon(Z)V

    .line 600
    const-string/jumbo v0, "Picasso-refQueue"

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso$CleanupThread;->setName(Ljava/lang/String;)V

    .line 601
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 604
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 612
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->a:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v2, 0x3e8

    .line 613
    invoke-virtual {v0, v2, v3}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action$RequestWeakReference;

    .line 614
    iget-object v1, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 615
    if-eqz v0, :cond_26

    .line 616
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 617
    iget-object v0, v0, Lcom/squareup/picasso/Action$RequestWeakReference;->a:Lcom/squareup/picasso/Action;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 622
    :catch_24
    move-exception v0

    .line 633
    :goto_25
    return-void

    .line 620
    :cond_26
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_29} :catch_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_5

    .line 624
    :catch_2a
    move-exception v0

    .line 625
    iget-object v1, p0, Lcom/squareup/picasso/Picasso$CleanupThread;->b:Landroid/os/Handler;

    new-instance v2, Lcom/squareup/picasso/Picasso$CleanupThread$1;

    invoke-direct {v2, p0, v0}, Lcom/squareup/picasso/Picasso$CleanupThread$1;-><init>(Lcom/squareup/picasso/Picasso$CleanupThread;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25
.end method
