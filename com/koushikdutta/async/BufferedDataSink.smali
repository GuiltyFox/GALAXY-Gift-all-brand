.class public Lcom/koushikdutta/async/BufferedDataSink;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# static fields
.field static final synthetic f:Z


# instance fields
.field a:Lcom/koushikdutta/async/DataSink;

.field b:Lcom/koushikdutta/async/ByteBufferList;

.field c:Lcom/koushikdutta/async/callback/WritableCallback;

.field d:I

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/BufferedDataSink;->f:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    .line 81
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/DataSink;)V

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/BufferedDataSink;)V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_20

    .line 37
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:Z

    if-eqz v0, :cond_20

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->a()V

    .line 41
    :cond_20
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_31

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 43
    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->e:Z

    .line 104
    :goto_b
    return-void

    .line 103
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->a()V

    goto :goto_b
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 87
    sget-boolean v0, Lcom/koushikdutta/async/BufferedDataSink;->f:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_c
    iput p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:I

    .line 89
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;Z)V

    .line 50
    return-void
.end method

.method protected a(Lcom/koushikdutta/async/ByteBufferList;Z)V
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 56
    :cond_d
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_2a

    .line 57
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    if-eqz p2, :cond_23

    .line 59
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 60
    :cond_23
    if-lez v0, :cond_2a

    .line 61
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 64
    :cond_2a
    return-void
.end method

.method public a(Lcom/koushikdutta/async/DataSink;)V
    .registers 4

    .prologue
    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    new-instance v1, Lcom/koushikdutta/async/BufferedDataSink$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/BufferedDataSink$1;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 30
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 109
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 70
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->d:I

    return v0
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->a:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->i()Z

    move-result v0

    return v0
.end method
