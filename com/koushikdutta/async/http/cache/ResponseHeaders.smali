.class final Lcom/koushikdutta/async/http/cache/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    .line 92
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    .line 104
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    .line 111
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->s:J

    .line 117
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    .line 118
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 120
    new-instance v3, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V

    move v0, v1

    .line 138
    :goto_1f
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v2

    if-ge v0, v2, :cond_14c

    .line 139
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    const-string/jumbo v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 142
    invoke-static {v4, v3}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    .line 138
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 143
    :cond_3c
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 144
    invoke-static {v4}, Lcom/koushikdutta/async/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    goto :goto_39

    .line 145
    :cond_4c
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 146
    invoke-static {v4}, Lcom/koushikdutta/async/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    goto :goto_39

    .line 147
    :cond_5c
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 148
    invoke-static {v4}, Lcom/koushikdutta/async/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    goto :goto_39

    .line 149
    :cond_6c
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 150
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    goto :goto_39

    .line 151
    :cond_78
    const-string/jumbo v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 152
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    goto :goto_39

    .line 155
    :cond_8e
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 156
    invoke-static {v4}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    goto :goto_39

    .line 157
    :cond_9e
    const-string/jumbo v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 159
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 160
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    .line 162
    :cond_b8
    const-string/jumbo v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_c1
    if-ge v2, v5, :cond_39

    aget-object v6, v4, v2

    .line 163
    iget-object v7, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 165
    :cond_d5
    const-string/jumbo v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 166
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->q:Ljava/lang/String;

    goto/16 :goto_39

    .line 167
    :cond_e2
    const-string/jumbo v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 168
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->r:Ljava/lang/String;

    goto/16 :goto_39

    .line 169
    :cond_ef
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 171
    :try_start_f8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->s:J
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_fe} :catch_100

    goto/16 :goto_39

    .line 172
    :catch_100
    move-exception v2

    goto/16 :goto_39

    .line 174
    :cond_103
    const-string/jumbo v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 175
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->t:Ljava/lang/String;

    goto/16 :goto_39

    .line 176
    :cond_110
    const-string/jumbo v5, "Proxy-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 177
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->u:Ljava/lang/String;

    goto/16 :goto_39

    .line 178
    :cond_11d
    const-string/jumbo v5, "WWW-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 179
    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->v:Ljava/lang/String;

    goto/16 :goto_39

    .line 180
    :cond_12a
    const-string/jumbo v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 181
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    goto/16 :goto_39

    .line 182
    :cond_13b
    const-string/jumbo v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 183
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    goto/16 :goto_39

    .line 186
    :cond_14c
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    return p1
.end method

.method private a(J)J
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 289
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 292
    :cond_13
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->o:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 295
    :cond_25
    iget-wide v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    iget-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    sub-long/2addr v2, v4

    .line 296
    iget-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    sub-long v4, p1, v4

    .line 297
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 512
    const-string/jumbo v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i:Z

    return p1
.end method

.method private c()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 306
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 322
    :cond_10
    :goto_10
    return-wide v2

    .line 307
    :cond_11
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    if-eqz v0, :cond_32

    .line 308
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 309
    :goto_1f
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 310
    cmp-long v4, v0, v2

    if-lez v4, :cond_30

    :goto_2b
    move-wide v2, v0

    goto :goto_10

    .line 308
    :cond_2d
    iget-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    goto :goto_1f

    :cond_30
    move-wide v0, v2

    .line 310
    goto :goto_2b

    .line 311
    :cond_32
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 319
    :goto_48
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 320
    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_10

    .line 318
    :cond_58
    iget-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    goto :goto_48
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->l:Z

    return p1
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 331
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->e:Ljava/util/Date;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public a(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    .line 401
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 402
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 451
    :goto_b
    return-object v0

    .line 405
    :cond_c
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->b()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 406
    :cond_18
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto :goto_b

    .line 409
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(J)J

    move-result-wide v6

    .line 410
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c()J

    move-result-wide v0

    .line 412
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c()I

    move-result v2

    if-eq v2, v10, :cond_38

    .line 413
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->c()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 418
    :cond_38
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e()I

    move-result v2

    if-eq v2, v10, :cond_c0

    .line 419
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->e()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 423
    :goto_49
    iget-boolean v8, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    if-nez v8, :cond_5e

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d()I

    move-result v8

    if-eq v8, v10, :cond_5e

    .line 424
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->d()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 427
    :cond_5e
    iget-boolean v8, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->h:Z

    if-nez v8, :cond_95

    add-long v8, v6, v2

    add-long/2addr v4, v0

    cmp-long v4, v8, v4

    if-gez v4, :cond_95

    .line 428
    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_79

    .line 429
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_79
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-lez v0, :cond_91

    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 436
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "Warning"

    const-string/jumbo v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_91
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto/16 :goto_b

    .line 441
    :cond_95
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 442
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->n:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Ljava/lang/String;)V

    .line 451
    :cond_9e
    :goto_9e
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->g()Z

    move-result v0

    if-eqz v0, :cond_bc

    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto/16 :goto_b

    .line 444
    :cond_a8
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v0, :cond_b2

    .line 445
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Ljava/util/Date;)V

    goto :goto_9e

    .line 446
    :cond_b2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    if-eqz v0, :cond_9e

    .line 447
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->c:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->a(Ljava/util/Date;)V

    goto :goto_9e

    .line 451
    :cond_bc
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto/16 :goto_b

    :cond_c0
    move-wide v2, v4

    goto :goto_49
.end method

.method public a(JJ)V
    .registers 8

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->f:J

    .line 279
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput-wide p3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->g:J

    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string/jumbo v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b()I

    move-result v1

    .line 344
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1c

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1c

    .line 367
    :cond_1b
    :goto_1b
    return v0

    .line 356
    :cond_1c
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->f()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->l:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->m:Z

    if-nez v1, :cond_2f

    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 363
    :cond_2f
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->i:Z

    if-nez v1, :cond_1b

    .line 367
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public a(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 461
    iget-object v1, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_c

    .line 476
    :cond_b
    :goto_b
    return v0

    .line 470
    :cond_c
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_b

    .line 476
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/cache/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public b(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 484
    new-instance v2, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    move v0, v1

    .line 486
    :goto_7
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 487
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    const-string/jumbo v5, "Warning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 486
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 492
    :cond_30
    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v5, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2d

    .line 493
    :cond_3e
    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 497
    :cond_42
    :goto_42
    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->d()I

    move-result v0

    if-ge v1, v0, :cond_62

    .line 498
    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 500
    iget-object v3, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->b:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 504
    :cond_62
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->p:Ljava/util/Set;

    return-object v0
.end method
