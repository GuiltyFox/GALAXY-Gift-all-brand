.class Lokhttp3/internal/framed/FramedConnection$Reader;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# instance fields
.field final a:Lokhttp3/internal/framed/FrameReader;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .registers 7

    .prologue
    .line 600
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    .line 601
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 4

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private a(Lokhttp3/internal/framed/Settings;)V
    .registers 8

    .prologue
    .line 755
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Reader$3;

    const-string/jumbo v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v5}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/FramedConnection$Reader$3;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 767
    return-void
.end method

.method public a(IIIZ)V
    .registers 5

    .prologue
    .line 820
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 825
    return-void
.end method

.method public a(IJ)V
    .registers 8

    .prologue
    .line 802
    if-nez p1, :cond_16

    .line 803
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 804
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedConnection;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lokhttp3/internal/framed/FramedConnection;->d:J

    .line 805
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v1

    .line 815
    :cond_12
    :goto_12
    return-void

    .line 806
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 808
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v1

    .line 809
    if-eqz v1, :cond_12

    .line 810
    monitor-enter v1

    .line 811
    :try_start_1f
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    .line 812
    monitor-exit v1

    goto :goto_12

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4

    .prologue
    .line 708
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 709
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    .line 716
    :cond_d
    :goto_d
    return-void

    .line 712
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_d

    .line 714
    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_d
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .registers 9

    .prologue
    .line 782
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v0

    if-lez v0, :cond_6

    .line 787
    :cond_6
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 788
    :try_start_9
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    .line 789
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 790
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4f

    .line 793
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v2, :cond_52

    aget-object v3, v0, v1

    .line 794
    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->a()I

    move-result v4

    if-le v4, p1, :cond_4c

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->c()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 795
    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/ErrorCode;)V

    .line 796
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    .line 793
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 790
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    .line 799
    :cond_52
    return-void
.end method

.method public a(ZII)V
    .registers 7

    .prologue
    .line 770
    if-eqz p1, :cond_e

    .line 771
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_d

    .line 773
    invoke-virtual {v0}, Lokhttp3/internal/framed/Ping;->b()V

    .line 779
    :cond_d
    :goto_d
    return-void

    .line 777
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V

    goto :goto_d
.end method

.method public a(ZILokio/BufferedSource;I)V
    .registers 7

    .prologue
    .line 630
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 644
    :cond_d
    :goto_d
    return-void

    .line 634
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 635
    if-nez v0, :cond_22

    .line 636
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 637
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->h(J)V

    goto :goto_d

    .line 640
    :cond_22
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->a(Lokio/BufferedSource;I)V

    .line 641
    if-eqz p1, :cond_d

    .line 642
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->i()V

    goto :goto_d
.end method

.method public a(ZLokhttp3/internal/framed/Settings;)V
    .registers 16

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 719
    .line 720
    const/4 v0, 0x0

    .line 721
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v8

    .line 722
    :try_start_7
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v2, v2, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v2

    .line 723
    if-eqz p1, :cond_1a

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v3}, Lokhttp3/internal/framed/Settings;->a()V

    .line 724
    :cond_1a
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v3, p2}, Lokhttp3/internal/framed/Settings;->a(Lokhttp3/internal/framed/Settings;)V

    .line 725
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_2e

    .line 726
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/FramedConnection$Reader;->a(Lokhttp3/internal/framed/Settings;)V

    .line 728
    :cond_2e
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v3

    .line 729
    const/4 v4, -0x1

    if-eq v3, v4, :cond_b7

    if-eq v3, v2, :cond_b7

    .line 730
    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 731
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->g(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 732
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v4, v2, v3}, Lokhttp3/internal/framed/FramedConnection;->a(J)V

    .line 733
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Z)Z

    .line 735
    :cond_53
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 736
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    move-wide v4, v2

    move-object v2, v0

    .line 739
    :goto_7d
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lokhttp3/internal/framed/FramedConnection$Reader$2;

    const-string/jumbo v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v12}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lokhttp3/internal/framed/FramedConnection$Reader$2;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 744
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_7 .. :try_end_99} :catchall_ad

    .line 745
    if-eqz v2, :cond_b3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_b3

    .line 746
    array-length v3, v2

    move v0, v1

    :goto_a1
    if-ge v0, v3, :cond_b3

    aget-object v1, v2, v0

    .line 747
    monitor-enter v1

    .line 748
    :try_start_a6
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    .line 749
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_b0

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 744
    :catchall_ad
    move-exception v0

    :try_start_ae
    monitor-exit v8
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0

    .line 749
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    .line 752
    :cond_b3
    return-void

    :cond_b4
    move-wide v4, v2

    move-object v2, v0

    goto :goto_7d

    :cond_b7
    move-object v2, v0

    move-wide v4, v6

    goto :goto_7d
.end method

.method public a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 649
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p3, p5, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 705
    :cond_d
    :goto_d
    return-void

    .line 653
    :cond_e
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v6

    .line 655
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    monitor-exit v6

    goto :goto_d

    .line 693
    :catchall_1b
    move-exception v0

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0

    .line 657
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    .line 659
    if-nez v0, :cond_8e

    .line 661
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 662
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 663
    monitor-exit v6

    goto :goto_d

    .line 667
    :cond_35
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v0

    if-gt p3, v0, :cond_3f

    monitor-exit v6

    goto :goto_d

    .line 670
    :cond_3f
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->d(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4d

    monitor-exit v6

    goto :goto_d

    .line 674
    :cond_4d
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 676
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;I)I

    .line 677
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/framed/FramedConnection$Reader$1;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v7}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/framed/FramedConnection$Reader$1;-><init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 691
    monitor-exit v6

    goto :goto_d

    .line 693
    :cond_8e
    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_1b

    .line 696
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->b()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 697
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 698
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    goto/16 :goto_d

    .line 703
    :cond_a1
    invoke-virtual {v0, p5, p6}, Lokhttp3/internal/framed/FramedStream;->a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 704
    if-eqz p2, :cond_d

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->i()V

    goto/16 :goto_d
.end method

.method protected b()V
    .registers 6

    .prologue
    .line 606
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->g:Lokhttp3/internal/framed/ErrorCode;

    .line 607
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->g:Lokhttp3/internal/framed/ErrorCode;

    .line 609
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v1, v1, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-nez v1, :cond_f

    .line 610
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v1}, Lokhttp3/internal/framed/FrameReader;->a()V

    .line 612
    :cond_f
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v1, p0}, Lokhttp3/internal/framed/FrameReader;->a(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 614
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->a:Lokhttp3/internal/framed/ErrorCode;

    .line 615
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_26
    .catchall {:try_start_4 .. :try_end_1b} :catchall_36

    .line 621
    :try_start_1b
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_4b

    .line 624
    :goto_20
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 626
    :goto_25
    return-void

    .line 616
    :catch_26
    move-exception v1

    .line 617
    :try_start_27
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_36

    .line 618
    :try_start_29
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_47

    .line 621
    :try_start_2b
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2, v1, v0}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_49

    .line 624
    :goto_30
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_25

    .line 620
    :catchall_36
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 621
    :goto_3a
    :try_start_3a
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3, v1, v2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_45

    .line 624
    :goto_3f
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 622
    :catch_45
    move-exception v1

    goto :goto_3f

    .line 620
    :catchall_47
    move-exception v0

    goto :goto_3a

    .line 622
    :catch_49
    move-exception v0

    goto :goto_30

    :catch_4b
    move-exception v0

    goto :goto_20
.end method
