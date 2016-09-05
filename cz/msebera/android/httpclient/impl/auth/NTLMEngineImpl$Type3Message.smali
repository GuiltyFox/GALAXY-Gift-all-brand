.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:I

.field protected b:[B

.field protected c:[B

.field protected d:[B

.field protected e:[B

.field protected f:[B

.field protected g:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .registers 17

    .prologue
    .line 1188
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1190
    iput p6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    .line 1193
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1195
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    .line 1206
    const/high16 v2, 0x800000

    and-int/2addr v2, p6

    if-eqz v2, :cond_73

    if-eqz p8, :cond_73

    if-eqz p7, :cond_73

    .line 1209
    :try_start_21
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    .line 1210
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->m()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    .line 1211
    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_6e

    .line 1212
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t()[B
    :try_end_34
    .catch Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException; {:try_start_21 .. :try_end_34} :catch_ac

    move-result-object v2

    .line 1249
    :goto_35
    and-int/lit8 v3, p6, 0x10

    if-eqz v3, :cond_cc

    .line 1250
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p6

    if-eqz v3, :cond_c8

    .line 1251
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->c()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    .line 1260
    :goto_48
    if-eqz v7, :cond_d1

    :try_start_4a
    const-string/jumbo v0, "UnicodeLittleUnmarked"

    .line 1261
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_51
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c:[B

    .line 1262
    if-eqz v1, :cond_d4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1263
    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_62
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->b:[B

    .line 1264
    const-string/jumbo v0, "UnicodeLittleUnmarked"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d:[B
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_6d} :catch_d6

    .line 1268
    return-void

    .line 1214
    :cond_6e
    :try_start_6e
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->r()[B

    move-result-object v2

    goto :goto_35

    .line 1218
    :cond_73
    const/high16 v2, 0x80000

    and-int/2addr v2, p6

    if-eqz v2, :cond_92

    .line 1220
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->n()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    .line 1221
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    .line 1222
    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_8d

    .line 1223
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t()[B

    move-result-object v2

    goto :goto_35

    .line 1225
    :cond_8d
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->s()[B

    move-result-object v2

    goto :goto_35

    .line 1228
    :cond_92
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->g()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    .line 1229
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->e()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    .line 1230
    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_a7

    .line 1231
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t()[B

    move-result-object v2

    goto :goto_35

    .line 1233
    :cond_a7
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q()[B
    :try_end_aa
    .catch Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException; {:try_start_6e .. :try_end_aa} :catch_ac

    move-result-object v2

    goto :goto_35

    .line 1237
    :catch_ac
    move-exception v2

    .line 1240
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    .line 1241
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->e()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    .line 1242
    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_c2

    .line 1243
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t()[B

    move-result-object v2

    goto/16 :goto_35

    .line 1245
    :cond_c2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->p()[B

    move-result-object v2

    goto/16 :goto_35

    .line 1253
    :cond_c8
    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    goto/16 :goto_48

    .line 1256
    :cond_cc
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    goto/16 :goto_48

    .line 1261
    :cond_d1
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 1263
    :cond_d4
    const/4 v0, 0x0

    goto :goto_62

    .line 1265
    :catch_d6
    move-exception v0

    .line 1266
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method b()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 1273
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    array-length v3, v0

    .line 1274
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    array-length v4, v0

    .line 1276
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->b:[B

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->b:[B

    array-length v0, v0

    .line 1277
    :goto_e
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c:[B

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c:[B

    array-length v2, v2

    .line 1278
    :goto_15
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d:[B

    array-length v5, v5

    .line 1280
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    if-eqz v6, :cond_1f

    .line 1281
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    array-length v1, v1

    .line 1288
    :cond_1f
    add-int/lit8 v6, v4, 0x48

    .line 1289
    add-int v7, v6, v3

    .line 1290
    add-int v8, v7, v0

    .line 1291
    add-int v9, v8, v5

    .line 1292
    add-int v10, v9, v2

    .line 1293
    add-int v11, v10, v1

    .line 1296
    const/4 v12, 0x3

    invoke-virtual {p0, v11, v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a(II)V

    .line 1299
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1300
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1303
    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1306
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1307
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1310
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1313
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1314
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1317
    invoke-virtual {p0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1320
    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1321
    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1324
    invoke-virtual {p0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1327
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1328
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1331
    invoke-virtual {p0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1334
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1335
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1338
    invoke-virtual {p0, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1341
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit16 v0, v0, 0x80

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit16 v1, v1, 0x200

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const v2, 0x8000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a:I

    and-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1369
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1371
    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d(I)V

    .line 1373
    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c(I)V

    .line 1376
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->e:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1377
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->f:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1378
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->b:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1379
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->d:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1380
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->c:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1381
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    if-eqz v0, :cond_e0

    .line 1382
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->g:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->a([B)V

    .line 1385
    :cond_e0
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e5
    move v0, v1

    .line 1276
    goto/16 :goto_e

    :cond_e8
    move v2, v1

    .line 1277
    goto/16 :goto_15
.end method
