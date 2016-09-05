.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

.field private volatile c:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 118
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->a:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 122
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 123
    return-void
.end method

.method private a(Lokhttp3/Headers;)Z
    .registers 4

    .prologue
    .line 298
    const-string/jumbo v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_14

    const-string/jumbo v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static a(Lokio/Buffer;)Z
    .registers 8

    .prologue
    const-wide/16 v4, 0x40

    const/4 v6, 0x0

    .line 279
    :try_start_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 280
    invoke-virtual {p0}, Lokio/Buffer;->b()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_14

    invoke-virtual {p0}, Lokio/Buffer;->b()J

    move-result-wide v4

    .line 281
    :cond_14
    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    move v0, v6

    .line 282
    :goto_1b
    const/16 v2, 0x10

    if-ge v0, v2, :cond_25

    .line 283
    invoke-virtual {v1}, Lokio/Buffer;->f()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 291
    :cond_25
    const/4 v0, 0x1

    .line 293
    :goto_26
    return v0

    .line 286
    :cond_27
    invoke-virtual {v1}, Lokio/Buffer;->q()I

    move-result v2

    .line 287
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_34} :catch_3c

    move-result v2

    if-nez v2, :cond_39

    move v0, v6

    .line 288
    goto :goto_26

    .line 282
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 292
    :catch_3c
    move-exception v0

    move v0, v6

    .line 293
    goto :goto_26
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 14

    .prologue
    .line 141
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 143
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v4

    .line 144
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->a:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v0, :cond_f

    .line 145
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 270
    :goto_e
    return-object v0

    .line 148
    :cond_f
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v0, :cond_11c

    const/4 v0, 0x1

    move v3, v0

    .line 149
    :goto_15
    if-nez v3, :cond_1b

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v1, v0, :cond_120

    :cond_1b
    const/4 v0, 0x1

    .line 151
    :goto_1c
    invoke-virtual {v4}, Lokhttp3/Request;->d()Lokhttp3/RequestBody;

    move-result-object v5

    .line 152
    if-eqz v5, :cond_123

    const/4 v1, 0x1

    .line 154
    :goto_23
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->b()Lokhttp3/Connection;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_126

    invoke-interface {v2}, Lokhttp3/Connection;->b()Lokhttp3/Protocol;

    move-result-object v2

    .line 156
    :goto_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "--> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    if-nez v0, :cond_84

    if-eqz v1, :cond_84

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lokhttp3/RequestBody;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "-byte body)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_84
    iget-object v6, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v6, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_14b

    .line 163
    if-eqz v1, :cond_d7

    .line 166
    invoke-virtual {v5}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_b0

    .line 167
    iget-object v2, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 169
    :cond_b0
    invoke-virtual {v5}, Lokhttp3/RequestBody;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_d7

    .line 170
    iget-object v2, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/RequestBody;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 174
    :cond_d7
    invoke-virtual {v4}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v6

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v6}, Lokhttp3/Headers;->a()I

    move-result v7

    :goto_e0
    if-ge v2, v7, :cond_12a

    .line 176
    invoke-virtual {v6, v2}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_119

    const-string/jumbo v9, "Content-Length"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_119

    .line 179
    iget-object v9, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v2}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 175
    :cond_119
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 148
    :cond_11c
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_15

    .line 149
    :cond_120
    const/4 v0, 0x0

    goto/16 :goto_1c

    .line 152
    :cond_123
    const/4 v1, 0x0

    goto/16 :goto_23

    .line 155
    :cond_126
    sget-object v2, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    goto/16 :goto_2d

    .line 183
    :cond_12a
    if-eqz v3, :cond_12e

    if-nez v1, :cond_22b

    .line 184
    :cond_12e
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--> END "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 209
    :cond_14b
    :goto_14b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 212
    :try_start_14f
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_2f2

    move-result-object v2

    .line 217
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 219
    invoke-virtual {v2}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v6

    .line 220
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v8

    .line 221
    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_30d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "-byte"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_180
    iget-object v7, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<-- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lokhttp3/Response;->b()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lokhttp3/Response;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 223
    invoke-virtual {v2}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_312

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " body"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-interface {v7, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 226
    if-eqz v0, :cond_327

    .line 227
    invoke-virtual {v2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    .line 228
    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v4

    :goto_201
    if-ge v0, v4, :cond_317

    .line 229
    iget-object v5, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_201

    .line 185
    :cond_22b
    invoke-virtual {v4}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v1

    if-eqz v1, :cond_25b

    .line 186
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--> END "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " (encoded body omitted)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 188
    :cond_25b
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 189
    invoke-virtual {v5, v2}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    .line 191
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 192
    invoke-virtual {v5}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v6

    .line 193
    if-eqz v6, :cond_271

    .line 194
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v1}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 197
    :cond_271
    iget-object v6, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v7, ""

    invoke-interface {v6, v7}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 198
    invoke-static {v2}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_2bd

    .line 199
    iget-object v6, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v2, v1}, Lokio/Buffer;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--> END "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {v5}, Lokhttp3/RequestBody;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "-byte body)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 203
    :cond_2bd
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--> END "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " (binary "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-virtual {v5}, Lokhttp3/RequestBody;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "-byte body omitted)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto/16 :goto_14b

    .line 213
    :catch_2f2
    move-exception v0

    .line 214
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<-- HTTP FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 215
    throw v0

    .line 221
    :cond_30d
    const-string/jumbo v1, "unknown-length"

    goto/16 :goto_180

    .line 223
    :cond_312
    const-string/jumbo v1, ""

    goto/16 :goto_1e5

    .line 232
    :cond_317
    if-eqz v3, :cond_31f

    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_32a

    .line 233
    :cond_31f
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v1, "<-- END HTTP"

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    :cond_327
    :goto_327
    move-object v0, v2

    .line 270
    goto/16 :goto_e

    .line 234
    :cond_32a
    invoke-virtual {v2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 235
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v1, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto :goto_327

    .line 237
    :cond_33d
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    .line 238
    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->b(J)Z

    .line 239
    invoke-interface {v0}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v1

    .line 241
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 242
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_35b

    .line 245
    :try_start_355
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    :try_end_35a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_355 .. :try_end_35a} :catch_390

    move-result-object v0

    .line 255
    :cond_35b
    invoke-static {v1}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokio/Buffer;)Z

    move-result v3

    if-nez v3, :cond_3ac

    .line 256
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<-- END HTTP (binary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-byte body omitted)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 258
    goto/16 :goto_e

    .line 246
    :catch_390
    move-exception v0

    .line 247
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v1, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v1, "<-- END HTTP"

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 251
    goto/16 :goto_e

    .line 261
    :cond_3ac
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3c7

    .line 262
    iget-object v3, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string/jumbo v4, ""

    invoke-interface {v3, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v1}, Lokio/Buffer;->t()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokio/Buffer;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    .line 266
    :cond_3c7
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<-- END HTTP ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-byte body)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->a(Ljava/lang/String;)V

    goto/16 :goto_327
.end method

.method public a(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .registers 4

    .prologue
    .line 131
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_b
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 133
    return-object p0
.end method
