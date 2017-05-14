.class public Lcom/koushikdutta/async/AsyncServer;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# static fields
.field static a:Lcom/koushikdutta/async/AsyncServer;

.field static final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/koushikdutta/async/AsyncServer;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic f:Z

.field private static h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Thread;

.field private g:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-class v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/AsyncServer;->f:Z

    .line 85
    :try_start_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_23

    .line 86
    const-string/jumbo v0, "java.net.preferIPv4Stack"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "java.net.preferIPv6Addresses"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_23} :catch_3a

    .line 94
    :cond_23
    :goto_23
    new-instance v0, Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->a:Lcom/koushikdutta/async/AsyncServer;

    .line 411
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    .line 525
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    return-void

    .line 41
    :cond_38
    const/4 v0, 0x0

    goto :goto_9

    .line 90
    :catch_3a
    move-exception v0

    goto :goto_23
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    .line 111
    if-nez p1, :cond_12

    .line 112
    const-string/jumbo p1, "AsyncServer"

    .line 113
    :cond_12
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer;->b:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static a(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 684
    const-wide v0, 0x7fffffffffffffffL

    move-wide v2, v0

    .line 688
    :goto_6
    const/4 v1, 0x0

    .line 690
    monitor-enter p0

    .line 691
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 693
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 694
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .line 695
    iget-wide v6, v0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_25

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    .line 703
    :goto_21
    monitor-exit p0

    .line 705
    if-nez v2, :cond_32

    .line 711
    return-wide v0

    .line 699
    :cond_25
    iget-wide v2, v0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->b:J

    sub-long/2addr v2, v4

    .line 700
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object v8, v1

    move-wide v0, v2

    move-object v2, v8

    goto :goto_21

    .line 703
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0

    .line 708
    :cond_32
    iget-object v2, v2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move-wide v2, v0

    .line 709
    goto :goto_6
.end method

.method static synthetic a(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 70
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;-><init>(Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ThreadQueue;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 72
    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->c:Lcom/koushikdutta/async/ThreadQueue;

    .line 73
    iput-object p0, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->d:Landroid/os/Handler;

    .line 74
    iput-object p1, v0, Lcom/koushikdutta/async/AsyncServer$RunnableWrapper;->b:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ThreadQueue;->a(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, v1, Lcom/koushikdutta/async/ThreadQueue;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .registers 3

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->b(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private static a(Lcom/koushikdutta/async/SelectorWrapper;)V
    .registers 3

    .prologue
    .line 130
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/koushikdutta/async/AsyncServer$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncServer$1;-><init>(Lcom/koushikdutta/async/SelectorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private a(Z)V
    .registers 7

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    monitor-enter p0

    .line 549
    :try_start_2
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    if-eqz v1, :cond_30

    .line 550
    const-string/jumbo v0, "NIO"

    const-string/jumbo v1, "Reentrant call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v0, Lcom/koushikdutta/async/AsyncServer;->f:Z

    if-nez v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    if-eq v0, v1, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 594
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw v0

    .line 553
    :cond_24
    const/4 v0, 0x1

    .line 554
    :try_start_25
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    .line 555
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    .line 594
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_21

    .line 596
    if-eqz v0, :cond_86

    .line 598
    :try_start_2c
    invoke-static {p0, v2, v1}, Lcom/koushikdutta/async/AsyncServer;->c(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_2f
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_2c .. :try_end_2f} :catch_72

    .line 613
    :goto_2f
    return-void

    .line 559
    :cond_30
    :try_start_30
    new-instance v2, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/koushikdutta/async/SelectorWrapper;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    .line 560
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_41} :catch_5f
    .catchall {:try_start_30 .. :try_end_41} :catchall_21

    .line 565
    if-eqz p1, :cond_62

    .line 566
    :try_start_43
    new-instance v3, Lcom/koushikdutta/async/AsyncServer$13;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v2, v1}, Lcom/koushikdutta/async/AsyncServer$13;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    .line 575
    :goto_4c
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncServer;->d()Z
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_21

    move-result v3

    if-nez v3, :cond_69

    .line 577
    :try_start_52
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->f()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_8a
    .catchall {:try_start_52 .. :try_end_57} :catchall_21

    .line 581
    :goto_57
    const/4 v0, 0x0

    :try_start_58
    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    .line 583
    monitor-exit p0

    goto :goto_2f

    .line 562
    :catch_5f
    move-exception v0

    .line 563
    monitor-exit p0

    goto :goto_2f

    .line 573
    :cond_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    goto :goto_4c

    .line 585
    :cond_69
    if-eqz p1, :cond_29

    .line 586
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_58 .. :try_end_71} :catchall_21

    goto :goto_2f

    .line 600
    :catch_72
    move-exception v0

    .line 601
    const-string/jumbo v1, "NIO"

    const-string/jumbo v3, "Selector closed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :try_start_7c
    invoke-virtual {v2}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_84

    goto :goto_2f

    .line 606
    :catch_84
    move-exception v0

    goto :goto_2f

    .line 612
    :cond_86
    invoke-static {p0, v2, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    goto :goto_2f

    .line 579
    :catch_8a
    move-exception v0

    goto :goto_57
.end method

.method private b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    .registers 5

    .prologue
    .line 345
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V

    .line 346
    sget-boolean v1, Lcom/koushikdutta/async/AsyncServer;->f:Z

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_16
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$6;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/koushikdutta/async/AsyncServer$6;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 373
    return-object v0
.end method

.method private static b(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->c(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 638
    :goto_3
    monitor-enter p0

    .line 639
    :try_start_4
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->g()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 640
    :cond_1a
    monitor-exit p0

    goto :goto_0

    .line 649
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0

    .line 628
    :catch_1f
    move-exception v0

    .line 629
    const-string/jumbo v1, "NIO"

    const-string/jumbo v2, "Selector exception, shutting down"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    :try_start_29
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_3

    .line 634
    :catch_31
    move-exception v0

    goto :goto_3

    .line 642
    :cond_33
    :try_start_33
    invoke-static {p1}, Lcom/koushikdutta/async/AsyncServer;->c(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 643
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    if-ne v0, p1, :cond_4a

    .line 644
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/AsyncServer$Scheduler;->a:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    .line 648
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_1c

    .line 651
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 652
    :try_start_4e
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    monitor-exit v1

    .line 655
    return-void

    .line 653
    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private static b(Lcom/koushikdutta/async/SelectorWrapper;)V
    .registers 6

    .prologue
    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 660
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_27

    .line 662
    :try_start_21
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_8

    .line 664
    :catch_25
    move-exception v0

    goto :goto_8

    .line 668
    :catch_27
    move-exception v0

    .line 670
    :cond_28
    return-void
.end method

.method private static c()Ljava/util/concurrent/ExecutorService;
    .registers 9

    .prologue
    .line 405
    new-instance v8, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;

    const-string/jumbo v0, "AsyncServer-worker-"

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncServer$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 408
    return-object v1
.end method

.method private static c(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "Lcom/koushikdutta/async/SelectorWrapper;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 722
    .line 725
    invoke-static {p0, p2}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v2

    .line 727
    :try_start_c
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_9a

    .line 730
    :try_start_d
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->b()I

    move-result v5

    .line 731
    if-nez v5, :cond_23

    .line 734
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_24

    cmp-long v1, v2, v6

    if-nez v1, :cond_24

    .line 736
    monitor-exit p0

    .line 831
    :goto_22
    return-void

    :cond_23
    move v0, v1

    .line 742
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_97

    .line 744
    if-eqz v0, :cond_2e

    .line 745
    cmp-long v0, v2, v6

    if-nez v0, :cond_a1

    .line 747
    :try_start_2b
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->c()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_9a

    .line 760
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->e()Ljava/util/Set;

    move-result-object v5

    .line 761
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 763
    :try_start_42
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 764
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;
    :try_end_4e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_42 .. :try_end_4e} :catch_95

    .line 768
    :try_start_4e
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_143
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4e .. :try_end_51} :catch_95

    move-result-object v3

    .line 769
    if-eqz v3, :cond_36

    .line 771
    const/4 v1, 0x0

    :try_start_55
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 772
    invoke-virtual {p1}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_60} :catch_148
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_55 .. :try_end_60} :catch_95

    move-result-object v2

    .line 773
    :try_start_61
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ListenCallback;

    .line 774
    new-instance v7, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 775
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v3, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 776
    invoke-virtual {v7, p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 777
    invoke-virtual {v2, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-interface {v0, v7}, Lcom/koushikdutta/async/callback/ListenCallback;->a(Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_82} :catch_83
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_61 .. :try_end_82} :catch_95

    goto :goto_36

    .line 780
    :catch_83
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    .line 781
    :goto_86
    const/4 v2, 0x1

    :try_start_87
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 782
    if-eqz v0, :cond_36

    .line 783
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_94
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_87 .. :try_end_94} :catch_95

    goto :goto_36

    .line 827
    :catch_95
    move-exception v0

    goto :goto_36

    .line 742
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 755
    :catch_9a
    move-exception v0

    .line 756
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 751
    :cond_a1
    :try_start_a1
    invoke-virtual {p1, v2, v3}, Lcom/koushikdutta/async/SelectorWrapper;->a(J)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_9a

    goto :goto_2e

    .line 786
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 787
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 788
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->c()I

    move-result v0

    .line 789
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->a(I)V

    goto/16 :goto_36

    .line 791
    :cond_ba
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 792
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 793
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->b()V

    goto/16 :goto_36

    .line 795
    :cond_cb
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 796
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    .line 797
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 798
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_e1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a5 .. :try_end_e1} :catch_95

    .line 801
    :try_start_e1
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 802
    new-instance v7, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/koushikdutta/async/AsyncNetworkSocket;-><init>()V

    .line 803
    invoke-virtual {v7, p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 804
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v2, v3}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 805
    invoke-virtual {v0, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_fc} :catch_111
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e1 .. :try_end_fc} :catch_95

    .line 815
    :try_start_fc
    invoke-virtual {v1, v7}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 816
    iget-object v0, v1, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v7}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_108} :catch_10a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_fc .. :try_end_108} :catch_95

    goto/16 :goto_36

    .line 818
    :catch_10a
    move-exception v0

    .line 819
    :try_start_10b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 807
    :catch_111
    move-exception v3

    .line 808
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 809
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 810
    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 811
    iget-object v0, v1, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto/16 :goto_36

    .line 823
    :cond_12c
    const-string/jumbo v0, "NIO"

    const-string/jumbo v1, "wtf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unknown key state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10b .. :try_end_13e} :catch_95

    .line 830
    :cond_13e
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto/16 :goto_22

    .line 780
    :catch_143
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_86

    :catch_148
    move-exception v0

    move-object v0, v4

    move-object v1, v3

    goto/16 :goto_86
.end method

.method private static c(Lcom/koushikdutta/async/SelectorWrapper;)V
    .registers 2

    .prologue
    .line 673
    invoke-static {p0}, Lcom/koushikdutta/async/AsyncServer;->b(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 676
    :try_start_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/SelectorWrapper;->f()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 680
    :goto_6
    return-void

    .line 678
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method private d()Z
    .registers 4

    .prologue
    .line 528
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 529
    :try_start_3
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServer;

    .line 530
    if-eqz v0, :cond_12

    .line 532
    const/4 v0, 0x0

    monitor-exit v1

    .line 536
    :goto_11
    return v0

    .line 534
    :cond_12
    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit v1

    .line 536
    const/4 v0, 0x1

    goto :goto_11

    .line 535
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 5

    .prologue
    .line 401
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 6

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v0

    .line 397
    :goto_a
    return-object v0

    .line 380
    :cond_b
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 382
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 384
    new-instance v2, Lcom/koushikdutta/async/AsyncServer$7;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/AsyncServer$7;-><init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_a
.end method

.method public a(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 414
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$8;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 437
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 145
    monitor-enter p0

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2b

    .line 156
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 159
    :goto_c
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-direct {v3, p1, v0, v1}, Lcom/koushikdutta/async/AsyncServer$Scheduled;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    if-nez v0, :cond_1e

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Z)V

    .line 163
    :cond_1e
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncServer;->b()Z

    move-result v0

    if-nez v0, :cond_29

    .line 164
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->g:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 166
    :cond_29
    monitor-exit p0

    .line 167
    return-object v3

    .line 158
    :cond_2b
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_c

    .line 166
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public a()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 273
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/AsyncServer$9;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncServer$9;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->b(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/Future;

    return-object v0
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 276
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    if-ne v0, v1, :cond_11

    .line 185
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->c:Ljava/util/PriorityQueue;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J

    .line 204
    :goto_10
    return-void

    .line 190
    :cond_11
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 191
    new-instance v1, Lcom/koushikdutta/async/AsyncServer$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/async/AsyncServer$3;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 199
    :try_start_1f
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_10

    .line 201
    :catch_23
    move-exception v0

    .line 202
    const-string/jumbo v1, "NIO"

    const-string/jumbo v2, "run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer;->e:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
