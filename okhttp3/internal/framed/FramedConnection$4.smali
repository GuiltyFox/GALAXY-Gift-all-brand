.class Lokhttp3/internal/framed/FramedConnection$4;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->a(ILjava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    .prologue
    .line 849
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$4;->d:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$4;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$4;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .prologue
    .line 851
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$4;->d:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->h(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$4;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/PushObserver;->a(ILjava/util/List;)Z

    move-result v0

    .line 853
    if-eqz v0, :cond_2e

    .line 854
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$4;->d:Lokhttp3/internal/framed/FramedConnection;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->a:I

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/FrameWriter;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 855
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$4;->d:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    .line 856
    :try_start_1e
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$4;->d:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->i(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 857
    monitor-exit v1

    .line 861
    :cond_2e
    :goto_2e
    return-void

    .line 857
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    .line 859
    :catch_32
    move-exception v0

    goto :goto_2e
.end method
