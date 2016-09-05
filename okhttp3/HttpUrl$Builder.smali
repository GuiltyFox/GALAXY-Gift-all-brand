.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const-string/jumbo v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 697
    const-string/jumbo v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 705
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x3a

    const/4 v1, 0x0

    .line 1428
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 1430
    :goto_9
    array-length v4, p0

    if-ge v0, v4, :cond_26

    move v5, v0

    .line 1432
    :goto_d
    if-ge v5, v7, :cond_1d

    aget-byte v4, p0, v5

    if-nez v4, :cond_1d

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1d

    .line 1433
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_d

    .line 1435
    :cond_1d
    sub-int v4, v5, v0

    .line 1436
    if-le v4, v2, :cond_23

    move v2, v4

    move v3, v0

    .line 1430
    :cond_23
    add-int/lit8 v0, v5, 0x2

    goto :goto_9

    .line 1443
    :cond_26
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1444
    :cond_2b
    :goto_2b
    array-length v4, p0

    if-ge v1, v4, :cond_53

    .line 1445
    if-ne v1, v3, :cond_3a

    .line 1446
    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 1447
    add-int/2addr v1, v2

    .line 1448
    if-ne v1, v7, :cond_2b

    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_2b

    .line 1450
    :cond_3a
    if-lez v1, :cond_3f

    invoke-virtual {v0, v6}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 1451
    :cond_3f
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1452
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->j(J)Lokio/Buffer;

    .line 1453
    add-int/lit8 v1, v1, 0x2

    .line 1454
    goto :goto_2b

    .line 1456
    :cond_53
    invoke-virtual {v0}, Lokio/Buffer;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 1160
    if-ne p2, p3, :cond_4

    .line 1183
    :cond_3
    return-void

    .line 1164
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1165
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_10

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_37

    .line 1167
    :cond_10
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1168
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    add-int/lit8 p2, p2, 0x1

    :goto_1f
    move v2, p2

    .line 1176
    :goto_20
    if-ge v2, p3, :cond_3

    .line 1177
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1178
    if-ge v3, p3, :cond_48

    move v4, v5

    :goto_2c
    move-object v0, p0

    move-object v1, p1

    .line 1179
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;IIZZ)V

    .line 1181
    if-eqz v4, :cond_35

    add-int/lit8 v3, v3, 0x1

    :cond_35
    move v2, v3

    .line 1182
    goto :goto_20

    .line 1172
    :cond_37
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 1178
    :cond_48
    const/4 v4, 0x0

    goto :goto_2c
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 1188
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1190
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1205
    :cond_14
    :goto_14
    return-void

    .line 1193
    :cond_15
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1194
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->d()V

    goto :goto_14

    .line 1197
    :cond_1f
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1198
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1202
    :goto_42
    if-eqz p4, :cond_14

    .line 1203
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1200
    :cond_4d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 1394
    move v0, p1

    move v4, p4

    .line 1396
    :goto_3
    if-ge v0, p2, :cond_4a

    .line 1397
    array-length v2, p3

    if-ne v4, v2, :cond_a

    move v0, v1

    .line 1423
    :goto_9
    return v0

    .line 1400
    :cond_a
    if-eq v4, p4, :cond_18

    .line 1401
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_9

    .line 1402
    :cond_16
    add-int/lit8 v0, v0, 0x1

    :cond_18
    move v2, v1

    move v3, v0

    .line 1408
    :goto_1a
    if-ge v3, p2, :cond_28

    .line 1409
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1410
    const/16 v6, 0x30

    if-lt v5, v6, :cond_28

    const/16 v6, 0x39

    if-le v5, v6, :cond_2e

    .line 1415
    :cond_28
    sub-int v0, v3, v0

    .line 1416
    if-nez v0, :cond_42

    move v0, v1

    goto :goto_9

    .line 1411
    :cond_2e
    if-nez v2, :cond_34

    if-eq v0, v3, :cond_34

    move v0, v1

    goto :goto_9

    .line 1412
    :cond_34
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 1413
    const/16 v5, 0xff

    if-le v2, v5, :cond_3f

    move v0, v1

    goto :goto_9

    .line 1408
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1419
    :cond_42
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 1420
    goto :goto_3

    .line 1422
    :cond_4a
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_50

    move v0, v1

    goto :goto_9

    .line 1423
    :cond_50
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 11

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 1244
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 1266
    :cond_e
    :goto_e
    return v0

    .line 1246
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1247
    if-lt v1, v6, :cond_17

    if-le v1, v7, :cond_1b

    :cond_17
    if-lt v1, v4, :cond_e

    if-gt v1, v5, :cond_e

    .line 1249
    :cond_1b
    add-int/lit8 v1, p1, 0x1

    :goto_1d
    if-ge v1, p2, :cond_e

    .line 1250
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1252
    if-lt v2, v6, :cond_27

    if-le v2, v7, :cond_3f

    :cond_27
    if-lt v2, v4, :cond_2b

    if-le v2, v5, :cond_3f

    :cond_2b
    const/16 v3, 0x30

    if-lt v2, v3, :cond_33

    const/16 v3, 0x39

    if-le v2, v3, :cond_3f

    :cond_33
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_42

    .line 1249
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1259
    :cond_42
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_e

    move v0, v1

    .line 1260
    goto :goto_e
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 6

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1272
    :goto_1
    if-ge p1, p2, :cond_14

    .line 1273
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1274
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    .line 1275
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 1276
    add-int/lit8 p1, p1, 0x1

    .line 1280
    goto :goto_1

    .line 1281
    :cond_14
    return v0
.end method

.method private static d(Ljava/lang/String;II)I
    .registers 6

    .prologue
    .line 1286
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1a

    .line 1287
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 1286
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1289
    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    .line 1290
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_1a
    move v0, p2

    .line 1297
    :sswitch_1b
    return v0

    .line 1287
    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1b
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private d()V
    .registers 4

    .prologue
    .line 1229
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1232
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1233
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1237
    :goto_2e
    return-void

    .line 1235
    :cond_2f
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1208
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-static {p0, p1, p2, v2}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1306
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1308
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    .line 1309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1311
    :goto_2b
    if-nez v0, :cond_38

    const/4 v0, 0x0

    .line 1317
    :goto_2e
    return-object v0

    .line 1310
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2b

    .line 1312
    :cond_38
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1313
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_46

    invoke-static {v0}, Lokhttp3/HttpUrl$Builder;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 1314
    :cond_46
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1317
    :cond_4c
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1212
    const-string/jumbo v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "%2e."

    .line 1213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, ".%2e"

    .line 1214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "%2e%2e"

    .line 1215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 1212
    :goto_25
    return v0

    .line 1215
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static f(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1322
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 1327
    :goto_c
    if-ge v0, p2, :cond_2c

    .line 1328
    array-length v6, v8

    if-ne v2, v6, :cond_13

    move-object v0, v3

    .line 1385
    :goto_12
    return-object v0

    .line 1331
    :cond_13
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_33

    const-string/jumbo v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1333
    if-eq v1, v7, :cond_25

    move-object v0, v3

    goto :goto_12

    .line 1334
    :cond_25
    add-int/lit8 v0, v0, 0x2

    .line 1335
    add-int/lit8 v1, v2, 0x2

    .line 1337
    if-ne v0, p2, :cond_a4

    move v2, v1

    .line 1378
    :cond_2c
    :goto_2c
    array-length v0, v8

    if-eq v2, v0, :cond_97

    .line 1379
    if-ne v1, v7, :cond_88

    move-object v0, v3

    goto :goto_12

    .line 1338
    :cond_33
    if-eqz v2, :cond_40

    .line 1340
    const-string/jumbo v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1341
    add-int/lit8 v0, v0, 0x1

    :cond_40
    :goto_40
    move v4, v5

    move v6, v0

    .line 1355
    :goto_42
    if-ge v6, p2, :cond_4e

    .line 1356
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1357
    invoke-static {v9}, Lokhttp3/HttpUrl;->a(C)I

    move-result v9

    .line 1358
    if-ne v9, v7, :cond_6f

    .line 1361
    :cond_4e
    sub-int v9, v6, v0

    .line 1362
    if-eqz v9, :cond_55

    const/4 v10, 0x4

    if-le v9, v10, :cond_75

    :cond_55
    move-object v0, v3

    goto :goto_12

    .line 1342
    :cond_57
    const-string/jumbo v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1344
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_6a

    move-object v0, v3

    goto :goto_12

    .line 1345
    :cond_6a
    add-int/lit8 v2, v2, 0x2

    .line 1346
    goto :goto_2c

    :cond_6d
    move-object v0, v3

    .line 1348
    goto :goto_12

    .line 1359
    :cond_6f
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 1355
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 1365
    :cond_75
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 1366
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 1367
    goto :goto_c

    .line 1380
    :cond_88
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1385
    :cond_97
    :try_start_97
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_9a
    .catch Ljava/net/UnknownHostException; {:try_start_97 .. :try_end_9a} :catch_9d

    move-result-object v0

    goto/16 :goto_12

    .line 1386
    :catch_9d
    move-exception v0

    .line 1387
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a4
    move v2, v1

    goto :goto_40
.end method

.method private static g(Ljava/lang/String;II)I
    .registers 12

    .prologue
    const/4 v8, -0x1

    .line 1462
    :try_start_1
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1d

    move-result v0

    .line 1464
    if-lez v0, :cond_1b

    const v1, 0xffff

    if-gt v0, v1, :cond_1b

    .line 1467
    :goto_1a
    return v0

    :cond_1b
    move v0, v8

    .line 1465
    goto :goto_1a

    .line 1466
    :catch_1d
    move-exception v0

    move v0, v8

    .line 1467
    goto :goto_1a
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 766
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method a(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .registers 16

    .prologue
    .line 1037
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;II)I

    move-result v2

    .line 1038
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Lokhttp3/internal/Util;->b(Ljava/lang/String;II)I

    move-result v11

    .line 1041
    invoke-static {p2, v2, v11}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;II)I

    move-result v0

    .line 1042
    const/4 v1, -0x1

    if-eq v0, v1, :cond_82

    .line 1043
    const/4 v1, 0x1

    const-string/jumbo v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1044
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 1045
    const-string/jumbo v0, "https:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 1059
    :goto_32
    const/4 v1, 0x0

    .line 1060
    const/4 v0, 0x0

    .line 1061
    invoke-static {p2, v2, v11}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;II)I

    move-result v3

    .line 1062
    const/4 v4, 0x2

    if-ge v3, v4, :cond_49

    if-eqz p1, :cond_49

    invoke-static {p1}, Lokhttp3/HttpUrl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_189

    .line 1072
    :cond_49
    add-int/2addr v2, v3

    move v8, v0

    move v9, v1

    move v1, v2

    .line 1075
    :goto_4d
    const-string/jumbo v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    .line 1076
    if-eq v10, v11, :cond_8e

    .line 1077
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1079
    :goto_5a
    sparse-switch v0, :sswitch_data_1c4

    move v0, v8

    move v2, v1

    move v1, v9

    :goto_60
    move v8, v0

    move v9, v1

    move v1, v2

    .line 1122
    goto :goto_4d

    .line 1046
    :cond_64
    const/4 v1, 0x1

    const-string/jumbo v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1047
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 1048
    const-string/jumbo v0, "http:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_32

    .line 1050
    :cond_7f
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->c:Lokhttp3/HttpUrl$Builder$ParseResult;

    .line 1155
    :goto_81
    return-object v0

    .line 1052
    :cond_82
    if-eqz p1, :cond_8b

    .line 1053
    invoke-static {p1}, Lokhttp3/HttpUrl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    goto :goto_32

    .line 1055
    :cond_8b
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->b:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_81

    .line 1077
    :cond_8e
    const/4 v0, -0x1

    goto :goto_5a

    .line 1082
    :sswitch_90
    if-nez v8, :cond_dc

    .line 1083
    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1085
    const-string/jumbo v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-eqz v9, :cond_c0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 1090
    if-eq v2, v10, :cond_d6

    .line 1091
    const/4 v8, 0x1

    .line 1092
    add-int/lit8 v1, v2, 0x1

    const-string/jumbo v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 1095
    :cond_d6
    const/4 v9, 0x1

    .line 1100
    :goto_d7
    add-int/lit8 v2, v10, 0x1

    move v0, v8

    move v1, v9

    .line 1101
    goto :goto_60

    .line 1097
    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    goto :goto_d7

    .line 1109
    :sswitch_106
    invoke-static {p2, v1, v10}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;II)I

    move-result v0

    .line 1110
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_125

    .line 1111
    invoke-static {p2, v1, v0}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1112
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1113
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_133

    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->d:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_81

    .line 1115
    :cond_125
    invoke-static {p2, v1, v0}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1118
    :cond_133
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-nez v0, :cond_13b

    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->e:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_81

    :cond_13b
    move v2, v10

    .line 1137
    :cond_13c
    :goto_13c
    const-string/jumbo v0, "?#"

    invoke-static {p2, v2, v11, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1138
    invoke-direct {p0, p2, v2, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;II)V

    .line 1142
    if-ge v0, v11, :cond_1c2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1c2

    .line 1143
    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;IIC)I

    move-result v2

    .line 1144
    add-int/lit8 v1, v0, 0x1

    const-string/jumbo v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 1150
    :goto_16a
    if-ge v2, v11, :cond_185

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_185

    .line 1151
    add-int/lit8 v1, v2, 0x1

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 1155
    :cond_185
    sget-object v0, Lokhttp3/HttpUrl$Builder$ParseResult;->a:Lokhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_81

    .line 1125
    :cond_189
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 1126
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 1127
    invoke-static {p1}, Lokhttp3/HttpUrl;->b(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 1128
    invoke-static {p1}, Lokhttp3/HttpUrl;->c(Lokhttp3/HttpUrl;)I

    move-result v0

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 1129
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1130
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1131
    if-eq v2, v11, :cond_1b9

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_13c

    .line 1132
    :cond_1b9
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_13c

    :cond_1c2
    move v2, v0

    goto :goto_16a

    .line 1079
    :sswitch_data_1c4
    .sparse-switch
        -0x1 -> :sswitch_106
        0x23 -> :sswitch_106
        0x2f -> :sswitch_106
        0x3f -> :sswitch_106
        0x40 -> :sswitch_90
        0x5c -> :sswitch_106
    .end sparse-switch
.end method

.method public a(I)Lokhttp3/HttpUrl$Builder;
    .registers 5

    .prologue
    .line 760
    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_21

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_21
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 762
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5

    .prologue
    .line 709
    if-nez p1, :cond_b

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_b
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 712
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 718
    :goto_19
    return-object p0

    .line 713
    :cond_1a
    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 714
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    goto :goto_19

    .line 716
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()Lokhttp3/HttpUrl$Builder;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 957
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_9
    if-ge v6, v7, :cond_25

    .line 958
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 959
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    const-string/jumbo v1, "[]"

    move v3, v2

    move v5, v2

    .line 960
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 957
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    .line 962
    :cond_25
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 963
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_30
    if-ge v0, v1, :cond_4f

    .line 964
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 965
    if-eqz v5, :cond_4c

    .line 966
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    const-string/jumbo v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 967
    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 966
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 971
    :cond_4f
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 972
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    const-string/jumbo v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 975
    :cond_60
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5

    .prologue
    .line 752
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 754
    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_30
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 756
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 865
    if-eqz p1, :cond_15

    const-string/jumbo v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 867
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v0}, Lokhttp3/HttpUrl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    .line 869
    return-object p0

    .line 866
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c()Lokhttp3/HttpUrl;
    .registers 3

    .prologue
    .line 979
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_1a
    new-instance v0, Lokhttp3/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;Lokhttp3/HttpUrl$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 990
    :cond_22
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 992
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_37
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    :cond_3c
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8c

    .line 1000
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1007
    :goto_54
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->a()I

    move-result v1

    .line 1008
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_66

    .line 1009
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1013
    :cond_66
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1015
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    if-eqz v1, :cond_79

    .line 1016
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1017
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1020
    :cond_79
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    if-eqz v1, :cond_87

    .line 1021
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_8c
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54
.end method
