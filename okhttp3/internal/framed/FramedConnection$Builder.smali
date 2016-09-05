.class public Lokhttp3/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lokio/BufferedSource;

.field private d:Lokio/BufferedSink;

.field private e:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private f:Lokhttp3/Protocol;

.field private g:Lokhttp3/internal/framed/PushObserver;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    sget-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->a:Lokhttp3/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 547
    sget-object v0, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    .line 548
    sget-object v0, Lokhttp3/internal/framed/PushObserver;->a:Lokhttp3/internal/framed/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->g:Lokhttp3/internal/framed/PushObserver;

    .line 556
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->h:Z

    .line 557
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->g:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z
    .registers 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->h:Z

    return v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->d:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->c:Lokio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .registers 5

    .prologue
    .line 566
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->a:Ljava/net/Socket;

    .line 567
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->b:Ljava/lang/String;

    .line 568
    iput-object p3, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->c:Lokio/BufferedSource;

    .line 569
    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->d:Lokio/BufferedSink;

    .line 570
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .registers 2

    .prologue
    .line 579
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    .line 580
    return-object p0
.end method

.method public a(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .registers 2

    .prologue
    .line 574
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 575
    return-object p0
.end method

.method public a()Lokhttp3/internal/framed/FramedConnection;
    .registers 3

    .prologue
    .line 589
    new-instance v0, Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V

    return-object v0
.end method
