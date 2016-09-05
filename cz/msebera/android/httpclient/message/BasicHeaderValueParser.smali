.class public Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/HeaderValueParser;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->c:[C

    return-void

    nop

    :array_18
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static a(C[C)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 249
    if-eqz p1, :cond_c

    .line 250
    array-length v2, p1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_c

    aget-char v3, p1, v1

    .line 251
    if-ne p0, v3, :cond_d

    .line 252
    const/4 v0, 0x1

    .line 256
    :cond_c
    return v0

    .line 250
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/HeaderElement;
    .registers 6

    .prologue
    .line 87
    const-string/jumbo v0, "Value"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 90
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 92
    if-eqz p1, :cond_23

    .line 93
    :goto_1e
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    return-object v0

    .line 92
    :cond_23
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    goto :goto_1e
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;
    .registers 5

    .prologue
    .line 161
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 16

    .prologue
    const/16 v11, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v5

    .line 268
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v0

    .line 269
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v9

    .line 273
    :goto_1c
    if-ge v5, v9, :cond_cd

    .line 274
    invoke-virtual {p1, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v3

    .line 275
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3a

    move v3, v2

    .line 285
    :goto_27
    if-ne v5, v9, :cond_45

    .line 287
    invoke-virtual {p1, v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move v3, v1

    .line 293
    :goto_2f
    if-eqz v3, :cond_4d

    .line 294
    invoke-virtual {p2, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    .line 342
    :goto_39
    return-object v0

    .line 278
    :cond_3a
    invoke-static {v3, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(C[C)Z

    move-result v3

    if-eqz v3, :cond_42

    move v3, v1

    .line 280
    goto :goto_27

    .line 282
    :cond_42
    add-int/lit8 v5, v5, 0x1

    .line 283
    goto :goto_1c

    .line 289
    :cond_45
    invoke-virtual {p1, v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    add-int/lit8 v5, v5, 0x1

    move-object v8, v0

    goto :goto_2f

    :cond_4d
    move v7, v2

    move v0, v2

    move v4, v5

    .line 304
    :goto_50
    if-ge v4, v9, :cond_cb

    .line 305
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v10

    .line 306
    if-ne v10, v11, :cond_c9

    if-nez v7, :cond_c9

    .line 307
    if-nez v0, :cond_78

    move v0, v1

    :goto_5d
    move v6, v0

    .line 309
    :goto_5e
    if-nez v6, :cond_7a

    if-nez v7, :cond_7a

    invoke-static {v10, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(C[C)Z

    move-result v0

    if-eqz v0, :cond_7a

    :goto_68
    move v2, v5

    .line 323
    :goto_69
    if-ge v2, v4, :cond_c7

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_78
    move v0, v2

    .line 307
    goto :goto_5d

    .line 313
    :cond_7a
    if-eqz v7, :cond_82

    move v0, v2

    .line 318
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    move v7, v0

    move v0, v6

    .line 319
    goto :goto_50

    .line 316
    :cond_82
    if-eqz v6, :cond_8a

    const/16 v0, 0x5c

    if-ne v10, v0, :cond_8a

    move v0, v1

    goto :goto_7d

    :cond_8a
    move v0, v2

    goto :goto_7d

    .line 327
    :goto_8c
    if-le v0, v2, :cond_9d

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_8c

    .line 331
    :cond_9d
    sub-int v3, v0, v2

    const/4 v5, 0x2

    if-lt v3, v5, :cond_b4

    .line 332
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v3

    if-ne v3, v11, :cond_b4

    add-int/lit8 v3, v0, -0x1

    .line 333
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v3

    if-ne v3, v11, :cond_b4

    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 335
    add-int/lit8 v0, v0, -0x1

    .line 337
    :cond_b4
    invoke-virtual {p1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 338
    if-eqz v1, :cond_c5

    .line 339
    add-int/lit8 v0, v4, 0x1

    .line 341
    :goto_bc
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 342
    invoke-virtual {p0, v8, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    goto/16 :goto_39

    :cond_c5
    move v0, v4

    goto :goto_bc

    :cond_c7
    move v0, v4

    goto :goto_8c

    :cond_c9
    move v6, v0

    goto :goto_5e

    :cond_cb
    move v1, v3

    goto :goto_68

    :cond_cd
    move v3, v2

    goto/16 :goto_27
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 4

    .prologue
    .line 355
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;
    .registers 6

    .prologue
    .line 100
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :cond_11
    :goto_11
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 104
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 106
    :cond_2b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 109
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/HeaderElement;

    return-object v0
.end method

.method public b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;
    .registers 7

    .prologue
    .line 137
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v2

    if-nez v2, :cond_29

    .line 142
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v2

    .line 143
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_29

    .line 144
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->c(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    .line 147
    :cond_29
    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;
    .registers 6

    .prologue
    .line 190
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v0

    .line 193
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v1

    .line 195
    :goto_14
    if-ge v0, v1, :cond_23

    .line 196
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v2

    .line 197
    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 202
    goto :goto_14

    .line 203
    :cond_23
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 204
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Lcz/msebera/android/httpclient/NameValuePair;

    .line 218
    :goto_2f
    return-object v0

    .line 208
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :cond_35
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v1

    if-nez v1, :cond_50

    .line 210
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    .line 213
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_35

    .line 218
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/NameValuePair;

    goto :goto_2f
.end method

.method public d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;
    .registers 4

    .prologue
    .line 245
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->c:[C

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    return-object v0
.end method
