.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private a:Lokhttp3/Request;

.field private b:Lokhttp3/Protocol;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/Handshake;

.field private f:Lokhttp3/Headers$Builder;

.field private g:Lokhttp3/ResponseBody;

.field private h:Lokhttp3/Response;

.field private i:Lokhttp3/Response;

.field private j:Lokhttp3/Response;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    .line 299
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 300
    return-void
.end method

.method private constructor <init>(Lokhttp3/Response;)V
    .registers 4

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    .line 303
    invoke-static {p1}, Lokhttp3/Response;->a(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 304
    invoke-static {p1}, Lokhttp3/Response;->b(Lokhttp3/Response;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 305
    invoke-static {p1}, Lokhttp3/Response;->c(Lokhttp3/Response;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response$Builder;->c:I

    .line 306
    invoke-static {p1}, Lokhttp3/Response;->d(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 307
    invoke-static {p1}, Lokhttp3/Response;->e(Lokhttp3/Response;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 308
    invoke-static {p1}, Lokhttp3/Response;->f(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->b()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 309
    invoke-static {p1}, Lokhttp3/Response;->g(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 310
    invoke-static {p1}, Lokhttp3/Response;->h(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->h:Lokhttp3/Response;

    .line 311
    invoke-static {p1}, Lokhttp3/Response;->i(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 312
    invoke-static {p1}, Lokhttp3/Response;->j(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 313
    invoke-static {p1}, Lokhttp3/Response;->k(Lokhttp3/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->k:J

    .line 314
    invoke-static {p1}, Lokhttp3/Response;->l(Lokhttp3/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$Builder;->l:J

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response;Lokhttp3/Response$1;)V
    .registers 3

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Response$Builder;)Lokhttp3/Request;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lokhttp3/Response;)V
    .registers 6

    .prologue
    .line 389
    invoke-static {p2}, Lokhttp3/Response;->g(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_20
    invoke-static {p2}, Lokhttp3/Response;->h(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_40
    invoke-static {p2}, Lokhttp3/Response;->i(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_60
    invoke-static {p2}, Lokhttp3/Response;->j(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_80
    return-void
.end method

.method static synthetic b(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/Response$Builder;)I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lokhttp3/Response$Builder;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/Response$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lokhttp3/Response;)V
    .registers 4

    .prologue
    .line 407
    invoke-static {p1}, Lokhttp3/Response;->g(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_f
    return-void
.end method

.method static synthetic e(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/Response$Builder;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->h:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/Response$Builder;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/Response$Builder;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/Response$Builder;)J
    .registers 3

    .prologue
    .line 284
    iget-wide v0, p0, Lokhttp3/Response$Builder;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/Response$Builder;)J
    .registers 3

    .prologue
    .line 284
    iget-wide v0, p0, Lokhttp3/Response$Builder;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 328
    iput p1, p0, Lokhttp3/Response$Builder;->c:I

    .line 329
    return-object p0
.end method

.method public a(J)Lokhttp3/Response$Builder;
    .registers 4

    .prologue
    .line 413
    iput-wide p1, p0, Lokhttp3/Response$Builder;->k:J

    .line 414
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 357
    return-object p0
.end method

.method public a(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 339
    return-object p0
.end method

.method public a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 367
    invoke-virtual {p1}, Lokhttp3/Headers;->b()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 368
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 324
    return-object p0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 319
    return-object p0
.end method

.method public a(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 377
    if-eqz p1, :cond_8

    const-string/jumbo v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;Lokhttp3/Response;)V

    .line 378
    :cond_8
    iput-object p1, p0, Lokhttp3/Response$Builder;->h:Lokhttp3/Response;

    .line 379
    return-object p0
.end method

.method public a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 372
    iput-object p1, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 373
    return-object p0
.end method

.method public a()Lokhttp3/Response;
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_d
    iget-object v0, p0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1a
    iget v0, p0, Lokhttp3/Response$Builder;->c:I

    if-gez v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/Response$Builder;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_3a
    new-instance v0, Lokhttp3/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public b(J)Lokhttp3/Response$Builder;
    .registers 4

    .prologue
    .line 418
    iput-wide p1, p0, Lokhttp3/Response$Builder;->l:J

    .line 419
    return-object p0
.end method

.method public b(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 383
    if-eqz p1, :cond_8

    const-string/jumbo v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;Lokhttp3/Response;)V

    .line 384
    :cond_8
    iput-object p1, p0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 385
    return-object p0
.end method

.method public c(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .registers 2

    .prologue
    .line 401
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lokhttp3/Response$Builder;->d(Lokhttp3/Response;)V

    .line 402
    :cond_5
    iput-object p1, p0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 403
    return-object p0
.end method
