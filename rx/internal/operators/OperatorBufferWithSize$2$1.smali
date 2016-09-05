.class Lrx/internal/operators/OperatorBufferWithSize$2$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$2;->a(Lrx/Producer;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/Producer;

.field final synthetic b:Lrx/internal/operators/OperatorBufferWithSize$2;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$2;Lrx/Producer;)V
    .registers 4

    .prologue
    .line 136
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->c:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->d:Z

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->d:Z

    .line 143
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a:Lrx/Producer;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/Producer;->a(J)V

    .line 144
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    .line 148
    cmp-long v0, p1, v2

    if-nez v0, :cond_e

    .line 188
    :cond_d
    :goto_d
    return-void

    .line 151
    :cond_e
    cmp-long v0, p1, v2

    if-gez v0, :cond_2c

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request a negative number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2c
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->d:Z

    if-nez v0, :cond_d

    .line 157
    cmp-long v0, p1, v4

    if-nez v0, :cond_38

    .line 158
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a()V

    goto :goto_d

    .line 160
    :cond_38
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->c:Z

    if-eqz v0, :cond_72

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->c:Z

    .line 162
    sub-long v0, p1, v6

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v2, v2, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    int-to-long v2, v2

    sub-long v2, v4, v2

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v4, v4, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v4, v4, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5a

    .line 164
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a()V

    goto :goto_d

    .line 172
    :cond_5a
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    int-to-long v2, v1

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    int-to-long v4, v1

    sub-long v6, p1, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lrx/Producer;->a(J)V

    goto :goto_d

    .line 174
    :cond_72
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v0, v0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    int-to-long v0, v0

    div-long v0, v4, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_83

    .line 176
    invoke-direct {p0}, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a()V

    goto :goto_d

    .line 185
    :cond_83
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->a:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$2$1;->b:Lrx/internal/operators/OperatorBufferWithSize$2;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$2;->d:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    int-to-long v2, v1

    mul-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lrx/Producer;->a(J)V

    goto/16 :goto_d
.end method
