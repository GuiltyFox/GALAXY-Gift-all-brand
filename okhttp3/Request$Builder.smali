.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Lokhttp3/HttpUrl;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/Headers$Builder;

.field private d:Lokhttp3/RequestBody;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    .line 107
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 108
    return-void
.end method

.method private constructor <init>(Lokhttp3/Request;)V
    .registers 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lokhttp3/Request;->a(Lokhttp3/Request;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 112
    invoke-static {p1}, Lokhttp3/Request;->b(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lokhttp3/Request;->c(Lokhttp3/Request;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->d:Lokhttp3/RequestBody;

    .line 114
    invoke-static {p1}, Lokhttp3/Request;->d(Lokhttp3/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->e:Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lokhttp3/Request;->e(Lokhttp3/Request;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->b()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request;Lokhttp3/Request$1;)V
    .registers 3

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Request$Builder;)Lokhttp3/HttpUrl;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/Request$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/Request$Builder;)Lokhttp3/Headers$Builder;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/Request$Builder;)Lokhttp3/RequestBody;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->d:Lokhttp3/RequestBody;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/Request$Builder;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 9

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_f
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_32
    :goto_32
    invoke-static {p1}, Lokhttp3/HttpUrl;->e(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 141
    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_52
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    .line 142
    :cond_77
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 164
    return-object p0
.end method

.method public a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 6

    .prologue
    .line 230
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1a
    if-eqz p2, :cond_43

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_43
    if-nez p2, :cond_6c

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_6c
    iput-object p1, p0, Lokhttp3/Request$Builder;->b:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lokhttp3/Request$Builder;->d:Lokhttp3/RequestBody;

    .line 240
    return-object p0
.end method

.method public a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .registers 4

    .prologue
    .line 119
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_b
    iput-object p1, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 121
    return-object p0
.end method

.method public a(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 210
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/Request;
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_d
    new-instance v0, Lokhttp3/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;Lokhttp3/Request$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 181
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 176
    return-object p0
.end method

.method public b(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 214
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method
