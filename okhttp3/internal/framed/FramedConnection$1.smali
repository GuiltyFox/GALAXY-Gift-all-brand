.class Lokhttp3/internal/framed/FramedConnection$1;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokhttp3/internal/framed/ErrorCode;

.field final synthetic d:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V
    .registers 6

    .prologue
    .line 346
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$1;->d:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$1;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$1;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$1;->d:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$1;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$1;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/framed/FramedConnection;->b(ILokhttp3/internal/framed/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 352
    :goto_9
    return-void

    .line 350
    :catch_a
    move-exception v0

    goto :goto_9
.end method
