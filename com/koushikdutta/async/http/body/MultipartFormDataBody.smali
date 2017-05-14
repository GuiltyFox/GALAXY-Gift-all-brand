.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# instance fields
.field d:Lcom/koushikdutta/async/LineEmitter;

.field e:Lcom/koushikdutta/async/http/Headers;

.field f:Lcom/koushikdutta/async/ByteBufferList;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field j:I

.field k:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 102
    const-string/jumbo v0, "multipart/form-data"

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->h:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 102
    const-string/jumbo v0, "multipart/form-data"

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->h:Ljava/lang/String;

    .line 104
    array-length v2, p1

    move v0, v1

    :goto_b
    if-ge v0, v2, :cond_2f

    aget-object v3, p1, v0

    .line 105
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d

    .line 104
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 108
    :cond_1d
    const-string/jumbo v4, "boundary"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 110
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Ljava/lang/String;)V

    .line 114
    :goto_2e
    return-void

    .line 113
    :cond_2f
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "No boundary found for multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->b(Ljava/lang/Exception;)V

    goto :goto_2e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Ljava/lang/String;)V

    .line 187
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 35
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 9

    .prologue
    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 180
    :goto_4
    return-void

    .line 131
    :cond_5
    new-instance v1, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 143
    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v3, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v3

    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v4, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v0

    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v3, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_15

    .line 169
    :cond_3c
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 179
    invoke-virtual {v1}, Lcom/koushikdutta/async/future/Continuation;->c()Lcom/koushikdutta/async/future/Continuation;

    goto :goto_4
.end method

.method public a(Lcom/koushikdutta/async/http/body/Part;)V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    .line 232
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 225
    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/http/body/Part;)V

    .line 226
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 9

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Ljava/lang/String;)V

    .line 202
    :cond_2f
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 204
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->c()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->e()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_5b

    .line 206
    const/4 v0, -0x1

    .line 210
    :goto_5a
    return v0

    .line 207
    :cond_5b
    int-to-long v4, v1

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->e()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    long-to-int v0, v0

    move v1, v0

    .line 208
    goto :goto_37

    .line 209
    :cond_74
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    .line 210
    iput v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->k:I

    goto :goto_5a
.end method

.method e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->f:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_6

    .line 48
    :goto_5
    return-void

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_11

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e:Lcom/koushikdutta/async/http/Headers;

    .line 44
    :cond_11
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e:Lcom/koushikdutta/async/http/Headers;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 46
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->g:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->f:Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_5
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->g()V

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e()V

    .line 60
    return-void
.end method

.method protected i()V
    .registers 4

    .prologue
    .line 64
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 65
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->d:Lcom/koushikdutta/async/LineEmitter;

    .line 66
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->d:Lcom/koushikdutta/async/LineEmitter;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->a(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->d:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 99
    return-void
.end method
