.class public Lcz/msebera/android/httpclient/client/utils/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# direct methods
.method public static a(Ljava/net/URI;)Ljava/net/URI;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string/jumbo v0, "URI"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    :goto_d
    return-object p0

    .line 184
    :cond_e
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 185
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 186
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->b(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 188
    :cond_1c
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 189
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 191
    :cond_2c
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 192
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 194
    :cond_3f
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 195
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a()Ljava/net/URI;

    move-result-object p0

    goto :goto_d
.end method

.method public static a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string/jumbo v0, "URI"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 154
    :goto_d
    return-object p0

    .line 138
    :cond_e
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 139
    if-eqz p1, :cond_44

    .line 140
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 141
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 142
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 148
    :goto_2a
    if-eqz p2, :cond_2f

    .line 149
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->e(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 151
    :cond_2f
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 152
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 154
    :cond_3f
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a()Ljava/net/URI;

    move-result-object p0

    goto :goto_d

    .line 144
    :cond_44
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 145
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 146
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    goto :goto_2a
.end method

.method public static a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 219
    const-string/jumbo v0, "Base URI"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v0, "Reference URI"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 224
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->b(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 236
    :goto_1e
    return-object v0

    .line 226
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    move v1, v0

    .line 227
    :goto_27
    if-eqz v1, :cond_30

    .line 228
    const-string/jumbo v0, "#"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 230
    :cond_30
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 231
    if-eqz v1, :cond_48

    .line 232
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    const/16 v1, 0x23

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 233
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 236
    :cond_48
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->c(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_1e

    :cond_4d
    move v1, v2

    .line 226
    goto :goto_27
.end method

.method public static b(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 324
    if-nez p0, :cond_5

    .line 373
    :goto_4
    return-object v6

    .line 328
    :cond_5
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 329
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 330
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 331
    if-nez v0, :cond_68

    .line 333
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_68

    .line 336
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 337
    if-ltz v1, :cond_83

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_54

    .line 339
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    :goto_31
    if-eqz v5, :cond_81

    .line 346
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 347
    if-ltz v7, :cond_81

    .line 348
    add-int/lit8 v1, v7, 0x1

    move v0, v1

    move v2, v3

    .line 350
    :goto_3f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_56

    .line 351
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_54
    move-object v5, v6

    .line 341
    goto :goto_31

    .line 357
    :cond_56
    if-lez v2, :cond_7f

    .line 359
    add-int v0, v1, v2

    :try_start_5a
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_61} :catch_7a

    move-result v0

    .line 363
    :goto_62
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v4, v0

    move-object v0, v1

    .line 368
    :cond_68
    :goto_68
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/TextUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 370
    new-instance v1, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v1, v0, v4, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    :goto_78
    move-object v6, v0

    .line 373
    goto :goto_4

    .line 360
    :catch_7a
    move-exception v0

    move v0, v4

    goto :goto_62

    :cond_7d
    move-object v0, v6

    goto :goto_78

    :cond_7f
    move v0, v4

    goto :goto_62

    :cond_81
    move-object v0, v5

    goto :goto_68

    :cond_83
    move-object v5, v0

    goto :goto_31
.end method

.method private static b(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 6

    .prologue
    const/16 v3, 0x3f

    .line 248
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_16

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/URI;)Ljava/net/URI;
    .registers 9

    .prologue
    const/16 v7, 0x2f

    .line 262
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    move-object v0, p0

    .line 308
    :cond_f
    :goto_f
    return-object v0

    .line 266
    :cond_10
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    const-string/jumbo v1, "Base URI must be absolute"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 268
    :goto_24
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 270
    array-length v4, v2

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v4, :cond_65

    aget-object v5, v2, v0

    .line 271
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_45

    const-string/jumbo v6, "."

    .line 272
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 270
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 267
    :cond_48
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_24

    .line 274
    :cond_4e
    const-string/jumbo v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 275
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_45

    .line 276
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_45

    .line 279
    :cond_61
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 282
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 286
    :cond_82
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_91

    .line 288
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_91
    :try_start_91
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 293
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bc

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 298
    :cond_bc
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 302
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_d8
    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 306
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_eb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_f2
    .catch Ljava/net/URISyntaxException; {:try_start_91 .. :try_end_f2} :catch_f5

    move-result-object v0

    goto/16 :goto_f

    .line 309
    :catch_f5
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
