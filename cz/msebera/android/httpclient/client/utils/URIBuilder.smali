.class public Lcz/msebera/android/httpclient/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "URIBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(Ljava/net/URI;)V

    .line 91
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 95
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    .line 97
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Ljava/net/URI;)V
    .registers 4

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g:I

    .line 160
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->j:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    .line 166
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->n:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->m:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 179
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 110
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_14
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 113
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->n:Ljava/lang/String;

    if-eqz v1, :cond_100

    .line 147
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_32
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 116
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_42
    :goto_42
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i:Ljava/lang/String;

    if-eqz v1, :cond_c1

    .line 134
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i:Ljava/lang/String;

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->j:Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 139
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 117
    :cond_60
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 118
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e:Ljava/lang/String;

    if-eqz v1, :cond_a6

    .line 120
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_7a
    :goto_7a
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 125
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_95
    iget v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g:I

    if-ltz v1, :cond_42

    .line 130
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 121
    :cond_a6
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d:Ljava/lang/String;

    if-eqz v1, :cond_7a

    .line 122
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 127
    :cond_bb
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95

    .line 135
    :cond_c1
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 136
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h:Ljava/lang/String;

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4f

    .line 140
    :cond_d4
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    if-eqz v1, :cond_ea

    .line 141
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    .line 142
    :cond_ea
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->l:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 143
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->l:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    .line 148
    :cond_100
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->m:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 149
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->m:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2d
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 474
    .line 475
    if-nez p0, :cond_4

    .line 476
    const/4 p0, 0x0

    .line 487
    :cond_3
    :goto_3
    return-object p0

    .line 478
    :cond_4
    const/4 v0, 0x0

    .line 479
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1d

    .line 484
    :cond_13
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 485
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 479
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 228
    if-gez p1, :cond_4

    const/4 p1, -0x1

    :cond_4
    iput p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->g:I

    .line 229
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/utils/URIBuilder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_c

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    .line 308
    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->j:Ljava/lang/String;

    .line 310
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 311
    iput-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->l:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public a()Ljava/net/URI;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 218
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->i:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3

    .prologue
    .line 417
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->m:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->n:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
