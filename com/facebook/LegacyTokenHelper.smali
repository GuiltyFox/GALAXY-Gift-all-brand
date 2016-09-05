.class final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "LegacyTokenHelper.java"


# static fields
.field public static final APPLICATION_ID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ApplicationId"

.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/facebook/LegacyTokenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string/jumbo v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    :cond_12
    iput-object p2, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1b

    move-object p1, v0

    .line 135
    :cond_1b
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    .line 138
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 441
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "{}"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    const-string/jumbo v1, "valueType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    const-string/jumbo v3, "bool"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 447
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    :cond_2a
    :goto_2a
    return-void

    .line 448
    :cond_2b
    const-string/jumbo v3, "bool[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 449
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Z

    .line 451
    :goto_41
    array-length v3, v2

    if-ge v0, v3, :cond_4d

    .line 452
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 454
    :cond_4d
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_2a

    .line 455
    :cond_51
    const-string/jumbo v3, "byte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 456
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2a

    .line 457
    :cond_66
    const-string/jumbo v3, "byte[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 458
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 460
    :goto_7c
    array-length v3, v2

    if-ge v0, v3, :cond_89

    .line 461
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 463
    :cond_89
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_2a

    .line 464
    :cond_8d
    const-string/jumbo v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 465
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_2a

    .line 466
    :cond_a2
    const-string/jumbo v3, "short[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 467
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [S

    .line 469
    :goto_b8
    array-length v3, v2

    if-ge v0, v3, :cond_c5

    .line 470
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 472
    :cond_c5
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_2a

    .line 473
    :cond_ca
    const-string/jumbo v3, "int"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 474
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 475
    :cond_df
    const-string/jumbo v3, "int[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 476
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    .line 478
    :goto_f5
    array-length v3, v2

    if-ge v0, v3, :cond_101

    .line 479
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 481
    :cond_101
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_2a

    .line 482
    :cond_106
    const-string/jumbo v3, "long"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 483
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2a

    .line 484
    :cond_11b
    const-string/jumbo v3, "long[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 485
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [J

    .line 487
    :goto_131
    array-length v3, v2

    if-ge v0, v3, :cond_13d

    .line 488
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_131

    .line 490
    :cond_13d
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_2a

    .line 491
    :cond_142
    const-string/jumbo v3, "float"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 492
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_2a

    .line 493
    :cond_158
    const-string/jumbo v3, "float[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 494
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 496
    :goto_16e
    array-length v3, v2

    if-ge v0, v3, :cond_17b

    .line 497
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_16e

    .line 499
    :cond_17b
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_2a

    .line 500
    :cond_180
    const-string/jumbo v3, "double"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 501
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_2a

    .line 502
    :cond_195
    const-string/jumbo v3, "double[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 503
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [D

    .line 505
    :goto_1ab
    array-length v3, v2

    if-ge v0, v3, :cond_1b7

    .line 506
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ab

    .line 508
    :cond_1b7
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_2a

    .line 509
    :cond_1bc
    const-string/jumbo v3, "char"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 510
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_2a

    .line 512
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_2a

    .line 514
    :cond_1dd
    const-string/jumbo v3, "char[]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_211

    .line 515
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [C

    move v1, v0

    .line 517
    :goto_1f4
    array-length v4, v3

    if-ge v1, v4, :cond_20c

    .line 518
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    if-eqz v4, :cond_209

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_209

    .line 520
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    .line 517
    :cond_209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f4

    .line 523
    :cond_20c
    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_2a

    .line 524
    :cond_211
    const-string/jumbo v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 525
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 526
    :cond_226
    const-string/jumbo v3, "stringList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25a

    .line 527
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 529
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    .line 530
    :goto_240
    if-ge v1, v3, :cond_255

    .line 531
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 532
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v5, :cond_252

    const/4 v0, 0x0

    :goto_24b
    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 530
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_240

    .line 532
    :cond_252
    check-cast v0, Ljava/lang/String;

    goto :goto_24b

    .line 536
    :cond_255
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2a

    .line 537
    :cond_25a
    const-string/jumbo v0, "enum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 539
    :try_start_263
    const-string/jumbo v0, "enumType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 544
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_27c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_263 .. :try_end_27c} :catch_27e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_263 .. :try_end_27c} :catch_281

    goto/16 :goto_2a

    .line 545
    :catch_27e
    move-exception v0

    goto/16 :goto_2a

    .line 546
    :catch_281
    move-exception v0

    goto/16 :goto_2a
.end method

.method public static getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, 0x0

    .line 309
    if-nez p0, :cond_6

    .line 318
    :cond_5
    :goto_5
    return-object v0

    .line 313
    :cond_6
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 314
    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 318
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_5
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    .prologue
    .line 219
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    .prologue
    .line 230
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    .prologue
    .line 278
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    .prologue
    .line 289
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    if-nez v1, :cond_11

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_10
.end method

.method public static getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .registers 2

    .prologue
    .line 263
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 265
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessTokenSource;

    .line 268
    :goto_18
    return-object v0

    .line 267
    :cond_19
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.IsSSO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_25

    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    goto :goto_18

    :cond_25
    sget-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    goto :goto_18
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 190
    if-nez p0, :cond_6

    .line 204
    :cond_5
    :goto_5
    return v0

    .line 194
    :cond_6
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 200
    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 204
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 304
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    .prologue
    .line 322
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    return-void
.end method

.method public static putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    return-void
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    .prologue
    .line 224
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 227
    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    .prologue
    .line 235
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    .prologue
    .line 283
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 286
    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    .prologue
    .line 294
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Permissions"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    return-void
.end method

.method public static putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .registers 3

    .prologue
    .line 273
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    return-void
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 213
    const-string/jumbo v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    if-nez v0, :cond_9

    .line 437
    :cond_8
    :goto_8
    return-void

    .line 335
    :cond_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 337
    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_3b

    .line 338
    const-string/jumbo v2, "byte"

    .line 339
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    .line 426
    :goto_23
    if-eqz v1, :cond_8

    .line 427
    const-string/jumbo v2, "valueType"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    if-eqz v0, :cond_33

    .line 431
    const-string/jumbo v1, "value"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    :cond_33
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 340
    :cond_3b
    instance-of v2, v0, Ljava/lang/Short;

    if-eqz v2, :cond_51

    .line 341
    const-string/jumbo v2, "short"

    .line 342
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto :goto_23

    .line 343
    :cond_51
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_67

    .line 344
    const-string/jumbo v2, "int"

    .line 345
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto :goto_23

    .line 346
    :cond_67
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_7d

    .line 347
    const-string/jumbo v2, "long"

    .line 348
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto :goto_23

    .line 349
    :cond_7d
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_93

    .line 350
    const-string/jumbo v2, "float"

    .line 351
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto :goto_23

    .line 352
    :cond_93
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_aa

    .line 353
    const-string/jumbo v2, "double"

    .line 354
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_23

    .line 355
    :cond_aa
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_c1

    .line 356
    const-string/jumbo v2, "bool"

    .line 357
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_23

    .line 358
    :cond_c1
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_d6

    .line 359
    const-string/jumbo v2, "char"

    .line 360
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_23

    .line 361
    :cond_d6
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_e9

    .line 362
    const-string/jumbo v2, "string"

    .line 363
    const-string/jumbo v3, "value"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_23

    .line 364
    :cond_e9
    instance-of v2, v0, Ljava/lang/Enum;

    if-eqz v2, :cond_10c

    .line 365
    const-string/jumbo v2, "enum"

    .line 366
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string/jumbo v3, "enumType"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_23

    .line 371
    :cond_10c
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 372
    instance-of v5, v0, [B

    if-eqz v5, :cond_12a

    .line 373
    const-string/jumbo v1, "byte[]"

    .line 374
    check-cast v0, [B

    check-cast v0, [B

    array-length v5, v0

    :goto_11d
    if-ge v3, v5, :cond_127

    aget-byte v6, v0, v3

    .line 375
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    :cond_127
    move-object v0, v2

    goto/16 :goto_23

    .line 377
    :cond_12a
    instance-of v5, v0, [S

    if-eqz v5, :cond_143

    .line 378
    const-string/jumbo v1, "short[]"

    .line 379
    check-cast v0, [S

    check-cast v0, [S

    array-length v5, v0

    :goto_136
    if-ge v3, v5, :cond_140

    aget-short v6, v0, v3

    .line 380
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_136

    :cond_140
    move-object v0, v2

    goto/16 :goto_23

    .line 382
    :cond_143
    instance-of v5, v0, [I

    if-eqz v5, :cond_15c

    .line 383
    const-string/jumbo v1, "int[]"

    .line 384
    check-cast v0, [I

    check-cast v0, [I

    array-length v5, v0

    :goto_14f
    if-ge v3, v5, :cond_159

    aget v6, v0, v3

    .line 385
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_14f

    :cond_159
    move-object v0, v2

    goto/16 :goto_23

    .line 387
    :cond_15c
    instance-of v5, v0, [J

    if-eqz v5, :cond_175

    .line 388
    const-string/jumbo v1, "long[]"

    .line 389
    check-cast v0, [J

    check-cast v0, [J

    array-length v5, v0

    :goto_168
    if-ge v3, v5, :cond_172

    aget-wide v6, v0, v3

    .line 390
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_168

    :cond_172
    move-object v0, v2

    goto/16 :goto_23

    .line 392
    :cond_175
    instance-of v5, v0, [F

    if-eqz v5, :cond_18f

    .line 393
    const-string/jumbo v1, "float[]"

    .line 394
    check-cast v0, [F

    check-cast v0, [F

    array-length v5, v0

    :goto_181
    if-ge v3, v5, :cond_18c

    aget v6, v0, v3

    .line 395
    float-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_181

    :cond_18c
    move-object v0, v2

    goto/16 :goto_23

    .line 397
    :cond_18f
    instance-of v5, v0, [D

    if-eqz v5, :cond_1a8

    .line 398
    const-string/jumbo v1, "double[]"

    .line 399
    check-cast v0, [D

    check-cast v0, [D

    array-length v5, v0

    :goto_19b
    if-ge v3, v5, :cond_1a5

    aget-wide v6, v0, v3

    .line 400
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_19b

    :cond_1a5
    move-object v0, v2

    goto/16 :goto_23

    .line 402
    :cond_1a8
    instance-of v5, v0, [Z

    if-eqz v5, :cond_1c1

    .line 403
    const-string/jumbo v1, "bool[]"

    .line 404
    check-cast v0, [Z

    check-cast v0, [Z

    array-length v5, v0

    :goto_1b4
    if-ge v3, v5, :cond_1be

    aget-boolean v6, v0, v3

    .line 405
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b4

    :cond_1be
    move-object v0, v2

    goto/16 :goto_23

    .line 407
    :cond_1c1
    instance-of v5, v0, [C

    if-eqz v5, :cond_1de

    .line 408
    const-string/jumbo v1, "char[]"

    .line 409
    check-cast v0, [C

    check-cast v0, [C

    array-length v5, v0

    :goto_1cd
    if-ge v3, v5, :cond_1db

    aget-char v6, v0, v3

    .line 410
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_1cd

    :cond_1db
    move-object v0, v2

    goto/16 :goto_23

    .line 412
    :cond_1de
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_202

    .line 413
    const-string/jumbo v1, "stringList"

    .line 415
    check-cast v0, Ljava/util/List;

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1eb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    if-nez v0, :cond_1fb

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1fb
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1eb

    :cond_1ff
    move-object v0, v2

    .line 419
    goto/16 :goto_23

    :cond_202
    move-object v0, v1

    .line 422
    goto/16 :goto_23
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .registers 8

    .prologue
    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    :try_start_1f
    invoke-direct {p0, v0, v1}, Lcom/facebook/LegacyTokenHelper;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    .line 148
    :catch_23
    move-exception v1

    .line 150
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error reading cached value for key: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\' -- "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    .line 156
    :goto_4c
    return-object v0

    :cond_4d
    move-object v0, v1

    goto :goto_4c
.end method

.method public save(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 160
    const-string/jumbo v0, "bundle"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    :try_start_20
    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/LegacyTokenHelper;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_14

    .line 167
    :catch_24
    move-exception v1

    .line 169
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error processing value for key: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\' -- "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_4c
    return-void

    .line 179
    :cond_4d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4c
.end method
