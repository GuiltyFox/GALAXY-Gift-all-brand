.class public Lokhttp3/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field final a:J

.field final b:Lokhttp3/Request;

.field final c:Lokhttp3/Response;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .registers 12

    .prologue
    const/4 v6, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v6, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->l:I

    .line 136
    iput-wide p1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->a:J

    .line 137
    iput-object p3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    .line 138
    iput-object p4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    .line 140
    if-eqz p4, :cond_7f

    .line 141
    invoke-virtual {p4}, Lokhttp3/Response;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->i:J

    .line 142
    invoke-virtual {p4}, Lokhttp3/Response;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->j:J

    .line 143
    invoke-virtual {p4}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    .line 144
    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v2

    :goto_23
    if-ge v0, v2, :cond_7f

    .line 145
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 148
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    .line 149
    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->e:Ljava/lang/String;

    .line 144
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 150
    :cond_41
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 151
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->h:Ljava/util/Date;

    goto :goto_3e

    .line 152
    :cond_51
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 153
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->f:Ljava/util/Date;

    .line 154
    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->g:Ljava/lang/String;

    goto :goto_3e

    .line 155
    :cond_63
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 156
    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->k:Ljava/lang/String;

    goto :goto_3e

    .line 157
    :cond_6f
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 158
    invoke-static {v4, v6}, Lokhttp3/internal/http/HeaderParser;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->l:I

    goto :goto_3e

    .line 162
    :cond_7f
    return-void
.end method

.method private static a(Lokhttp3/Request;)Z
    .registers 2

    .prologue
    .line 307
    const-string/jumbo v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b()Lokhttp3/internal/http/CacheStrategy;
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 181
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    if-nez v0, :cond_10

    .line 182
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v0, v1, v12, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    .line 243
    :goto_f
    return-object v0

    .line 186
    :cond_10
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->e()Lokhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_28

    .line 187
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v0, v1, v12, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_f

    .line 193
    :cond_28
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-static {v0, v1}, Lokhttp3/internal/http/CacheStrategy;->a(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 194
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v0, v1, v12, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_f

    .line 197
    :cond_3a
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->f()Lokhttp3/CacheControl;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Lokhttp3/CacheControl;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-static {v0}, Lokhttp3/internal/http/CacheStrategy$Factory;->a(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 199
    :cond_4e
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v0, v1, v12, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_f

    .line 202
    :cond_56
    invoke-direct {p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->d()J

    move-result-wide v8

    .line 203
    invoke-direct {p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->c()J

    move-result-wide v0

    .line 205
    invoke-virtual {v6}, Lokhttp3/CacheControl;->c()I

    move-result v2

    if-eq v2, v13, :cond_73

    .line 206
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->c()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 210
    :cond_73
    invoke-virtual {v6}, Lokhttp3/CacheControl;->h()I

    move-result v2

    if-eq v2, v13, :cond_129

    .line 211
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->h()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 215
    :goto_84
    iget-object v7, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v7}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v7

    .line 216
    invoke-virtual {v7}, Lokhttp3/CacheControl;->f()Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-virtual {v6}, Lokhttp3/CacheControl;->g()I

    move-result v10

    if-eq v10, v13, :cond_a1

    .line 217
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 220
    :cond_a1
    invoke-virtual {v7}, Lokhttp3/CacheControl;->a()Z

    move-result v6

    if-nez v6, :cond_e3

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_e3

    .line 221
    iget-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 222
    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_c2

    .line 223
    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 225
    :cond_c2
    const-wide/32 v0, 0x5265c00

    .line 226
    cmp-long v0, v8, v0

    if-lez v0, :cond_d8

    invoke-direct {p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->e()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 227
    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 229
    :cond_d8
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    invoke-direct {v0, v12, v1, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_f

    .line 232
    :cond_e3
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->k:Ljava/lang/String;

    if-eqz v1, :cond_108

    .line 235
    const-string/jumbo v1, "If-None-Match"

    iget-object v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 242
    :cond_f5
    :goto_f5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lokhttp3/internal/http/CacheStrategy$Factory;->a(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_122

    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    iget-object v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-direct {v0, v1, v2, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_f

    .line 236
    :cond_108
    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v1, :cond_115

    .line 237
    const-string/jumbo v1, "If-Modified-Since"

    iget-object v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_f5

    .line 238
    :cond_115
    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v1, :cond_f5

    .line 239
    const-string/jumbo v1, "If-Modified-Since"

    iget-object v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_f5

    .line 243
    :cond_122
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    invoke-direct {v0, v1, v12, v12}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_f

    :cond_129
    move-wide v2, v4

    goto/16 :goto_84
.end method

.method private c()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 253
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lokhttp3/CacheControl;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    .line 255
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 274
    :cond_1a
    :goto_1a
    return-wide v2

    .line 256
    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-eqz v0, :cond_3c

    .line 257
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    .line 258
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 260
    :goto_29
    iget-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 261
    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    :goto_35
    move-wide v2, v0

    goto :goto_1a

    .line 258
    :cond_37
    iget-wide v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->j:J

    goto :goto_29

    :cond_3a
    move-wide v0, v2

    .line 261
    goto :goto_35

    .line 262
    :cond_3c
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    .line 263
    invoke-virtual {v0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 268
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    .line 269
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 271
    :goto_5a
    iget-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 272
    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_1a

    .line 269
    :cond_6a
    iget-wide v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->i:J

    goto :goto_5a
.end method

.method private d()J
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 282
    iget-object v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->j:J

    iget-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->d:Ljava/util/Date;

    .line 283
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 285
    :cond_13
    iget v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->l:I

    int-to-long v4, v3

    .line 286
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 288
    :cond_25
    iget-wide v2, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->j:J

    iget-wide v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->i:J

    sub-long/2addr v2, v4

    .line 289
    iget-wide v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->a:J

    iget-wide v6, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->j:J

    sub-long/2addr v4, v6

    .line 290
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->i()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()Lokhttp3/internal/http/CacheStrategy;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->b()Lokhttp3/internal/http/CacheStrategy;

    move-result-object v0

    .line 170
    iget-object v1, v0, Lokhttp3/internal/http/CacheStrategy;->a:Lokhttp3/Request;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->f()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->i()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 172
    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    invoke-direct {v0, v2, v2, v2}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    .line 175
    :cond_1a
    return-object v0
.end method
