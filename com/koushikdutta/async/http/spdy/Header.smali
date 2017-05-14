.class final Lcom/koushikdutta/async/http/spdy/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final a:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final b:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final c:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final d:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final e:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final f:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public static final g:Lcom/koushikdutta/async/http/spdy/ByteString;


# instance fields
.field public final h:Lcom/koushikdutta/async/http/spdy/ByteString;

.field public final i:Lcom/koushikdutta/async/http/spdy/ByteString;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string/jumbo v0, ":status"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->a:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 8
    const-string/jumbo v0, ":method"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->b:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 9
    const-string/jumbo v0, ":path"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->c:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 10
    const-string/jumbo v0, ":scheme"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->d:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 11
    const-string/jumbo v0, ":authority"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->e:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 12
    const-string/jumbo v0, ":host"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->f:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 13
    const-string/jumbo v0, ":version"

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Header;->g:Lcom/koushikdutta/async/http/spdy/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 32
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 33
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Header;->j:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 27
    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 23
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lcom/koushikdutta/async/http/spdy/Header;

    if-eqz v1, :cond_1c

    .line 38
    check-cast p1, Lcom/koushikdutta/async/http/spdy/Header;

    .line 39
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    iget-object v2, p1, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    iget-object v2, p1, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 42
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 46
    .line 47
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
