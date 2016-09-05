.class Lokhttp3/internal/framed/FramedConnection$5;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->a(ILjava/util/List;Z)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    .prologue
    .line 867
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$5;->e:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$5;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$5;->c:Ljava/util/List;

    iput-boolean p6, p0, Lokhttp3/internal/framed/FramedConnection$5;->d:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .prologue
    .line 869
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$5;->e:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->h(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->c:Ljava/util/List;

    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedConnection$5;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lokhttp3/internal/framed/PushObserver;->a(ILjava/util/List;Z)Z

    move-result v0

    .line 871
    if-eqz v0, :cond_1d

    :try_start_12
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->e:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->a:I

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 872
    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection$5;->d:Z

    if-eqz v0, :cond_36

    .line 873
    :cond_23
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$5;->e:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_3a

    .line 874
    :try_start_26
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$5;->e:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->i(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 875
    monitor-exit v1

    .line 879
    :cond_36
    :goto_36
    return-void

    .line 875
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    :try_start_39
    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 877
    :catch_3a
    move-exception v0

    goto :goto_36
.end method
