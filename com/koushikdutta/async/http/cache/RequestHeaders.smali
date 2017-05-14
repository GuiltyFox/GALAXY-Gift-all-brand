.class final Lcom/koushikdutta/async/http/cache/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    .line 37
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    .line 38
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    .line 56
    iput v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I

    .line 68
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 71
    new-instance v1, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V

    .line 87
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v2

    if-ge v0, v2, :cond_d6

    .line 88
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string/jumbo v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 91
    invoke-static {v3, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    .line 87
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 92
    :cond_34
    const-string/jumbo v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 93
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 94
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    goto :goto_31

    .line 96
    :cond_49
    const-string/jumbo v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 97
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    goto :goto_31

    .line 98
    :cond_55
    const-string/jumbo v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 99
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    goto :goto_31

    .line 100
    :cond_61
    const-string/jumbo v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 101
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->h:Z

    goto :goto_31

    .line 102
    :cond_6d
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 104
    :try_start_76
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->i:I
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_7c} :catch_7d

    goto :goto_31

    .line 105
    :catch_7d
    move-exception v2

    goto :goto_31

    .line 107
    :cond_7f
    const-string/jumbo v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 108
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->j:Ljava/lang/String;

    goto :goto_31

    .line 109
    :cond_8b
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 110
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->k:Ljava/lang/String;

    goto :goto_31

    .line 111
    :cond_97
    const-string/jumbo v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 112
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->l:Ljava/lang/String;

    goto :goto_31

    .line 113
    :cond_a3
    const-string/jumbo v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 114
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->m:Ljava/lang/String;

    goto :goto_31

    .line 115
    :cond_af
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 116
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->n:Ljava/lang/String;

    goto/16 :goto_31

    .line 117
    :cond_bc
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 118
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->o:Ljava/lang/String;

    goto/16 :goto_31

    .line 119
    :cond_c9
    const-string/jumbo v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 120
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->r:Ljava/lang/String;

    goto/16 :goto_31

    .line 123
    :cond_d6
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    return p1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .registers 2

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z
    .registers 2

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    return p1
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 274
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 276
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 267
    :cond_c
    invoke-static {p1}, Lcom/koushikdutta/async/http/HttpDate;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f:I

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->h:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->p:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders;->q:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
