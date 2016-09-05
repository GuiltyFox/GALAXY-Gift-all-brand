.class Lokhttp3/internal/framed/FramedConnection$6;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->a(ILokio/BufferedSource;IZ)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokio/Buffer;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .registers 8

    .prologue
    .line 893
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$6;->f:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$6;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$6;->c:Lokio/Buffer;

    iput p6, p0, Lokhttp3/internal/framed/FramedConnection$6;->d:I

    iput-boolean p7, p0, Lokhttp3/internal/framed/FramedConnection$6;->e:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    .prologue
    .line 896
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$6;->f:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->h(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->c:Lokio/Buffer;

    iget v3, p0, Lokhttp3/internal/framed/FramedConnection$6;->d:I

    iget-boolean v4, p0, Lokhttp3/internal/framed/FramedConnection$6;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/PushObserver;->a(ILokio/BufferedSource;IZ)Z

    move-result v0

    .line 897
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->f:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->a:I

    sget-object v3, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 898
    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection$6;->e:Z

    if-eqz v0, :cond_38

    .line 899
    :cond_25
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$6;->f:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    .line 900
    :try_start_28
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$6;->f:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->i(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$6;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 901
    monitor-exit v1

    .line 905
    :cond_38
    :goto_38
    return-void

    .line 901
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 903
    :catch_3c
    move-exception v0

    goto :goto_38
.end method
