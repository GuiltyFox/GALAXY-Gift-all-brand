.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lokhttp3/Request;

.field private final b:Lokhttp3/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lokhttp3/Handshake;

.field private final f:Lokhttp3/Headers;

.field private final g:Lokhttp3/ResponseBody;

.field private final h:Lokhttp3/Response;

.field private final i:Lokhttp3/Response;

.field private final j:Lokhttp3/Response;

.field private final k:J

.field private final l:J

.field private volatile m:Lokhttp3/CacheControl;


# direct methods
.method private constructor <init>(Lokhttp3/Response$Builder;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Response$Builder;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 60
    invoke-static {p1}, Lokhttp3/Response$Builder;->b(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response;->c:I

    .line 62
    invoke-static {p1}, Lokhttp3/Response$Builder;->d(Lokhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/Response$Builder;->e(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    .line 64
    invoke-static {p1}, Lokhttp3/Response$Builder;->f(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 65
    invoke-static {p1}, Lokhttp3/Response$Builder;->g(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    .line 66
    invoke-static {p1}, Lokhttp3/Response$Builder;->h(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    .line 67
    invoke-static {p1}, Lokhttp3/Response$Builder;->i(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    .line 68
    invoke-static {p1}, Lokhttp3/Response$Builder;->j(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    .line 69
    invoke-static {p1}, Lokhttp3/Response$Builder;->k(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->k:J

    .line 70
    invoke-static {p1}, Lokhttp3/Response$Builder;->l(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->l:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Response;)Lokhttp3/Request;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/Response;)Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/Response;)I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/Response;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/Response;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/Response;)Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/Response;)J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/Response;)J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_9

    move-object p2, v0

    :cond_9
    return-object p2
.end method

.method public a()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/Response;->c:I

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 106
    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public close()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 270
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method public f()Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    return-object v0
.end method

.method public g()Lokhttp3/ResponseBody;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public h()Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Lokhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public i()Lokhttp3/CacheControl;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/Response;->m:Lokhttp3/CacheControl;

    .line 246
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl;->a(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->m:Lokhttp3/CacheControl;

    goto :goto_4
.end method

.method public j()J
    .registers 3

    .prologue
    .line 255
    iget-wide v0, p0, Lokhttp3/Response;->k:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    .prologue
    .line 264
    iget-wide v0, p0, Lokhttp3/Response;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 280
    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
