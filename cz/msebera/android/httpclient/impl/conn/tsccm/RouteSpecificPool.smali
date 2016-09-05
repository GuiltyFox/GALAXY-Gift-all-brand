.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field protected final c:I

.field protected final d:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

.field protected final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V
    .registers 5

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 104
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 105
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 106
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->c:I

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 110
    return-void
.end method


# virtual methods
.method public final a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 6

    .prologue
    .line 174
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 175
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 176
    :cond_14
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 177
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 178
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 179
    :cond_30
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 195
    :goto_33
    return-object v0

    .line 184
    :cond_34
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 186
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->b()V

    .line 187
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->c()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v1

    .line 189
    :try_start_51
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_33

    .line 190
    :catch_55
    move-exception v1

    .line 191
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v3, "I/O error closing connection"

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 195
    :cond_5f
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 5

    .prologue
    .line 206
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_21

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry created for this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_21
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v0, v1, :cond_47

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry allocated from this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_47
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .registers 3

    .prologue
    .line 273
    const-string/jumbo v0, "Waiting thread"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->c:I

    return v0
.end method

.method public b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->d()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "Entry not planned for this pool"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 228
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 229
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .registers 3

    .prologue
    .line 305
    if-nez p1, :cond_3

    .line 310
    :goto_2
    return-void

    .line 309
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 142
    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    if-ge v1, v0, :cond_e

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)Z
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    if-eqz v0, :cond_e

    .line 246
    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 248
    :cond_e
    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 259
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "There is no entry that could be dropped"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 260
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 261
    return-void

    .line 259
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public g()Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method
