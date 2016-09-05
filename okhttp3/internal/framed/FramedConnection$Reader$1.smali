.class Lokhttp3/internal/framed/FramedConnection$Reader$1;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection$Reader;->a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/FramedStream;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V
    .registers 5

    .prologue
    .line 678
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->c:Lokhttp3/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->a:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    .prologue
    .line 681
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->c:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->f(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->a:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Listener;->a(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 689
    :goto_d
    return-void

    .line 682
    :catch_e
    move-exception v0

    .line 683
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->c:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    :try_start_33
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->a:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_d

    .line 686
    :catch_3b
    move-exception v0

    goto :goto_d
.end method
