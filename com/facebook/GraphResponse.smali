.class public Lcom/facebook/GraphResponse;
.super Ljava/lang/Object;
.source "GraphResponse.java"


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field public static final SUCCESS_KEY:Ljava/lang/String; = "success"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lorg/json/JSONObject;

.field private final graphObjectArray:Lorg/json/JSONArray;

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V
    .registers 7

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    .line 99
    iput-object p2, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 100
    iput-object p3, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 102
    iput-object p5, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    .line 103
    iput-object p6, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    .line 104
    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_24

    .line 457
    new-instance v4, Lcom/facebook/GraphResponse;

    .line 458
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 461
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 463
    :cond_24
    return-object v3
.end method

.method private static createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 412
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_56

    .line 413
    check-cast p2, Lorg/json/JSONObject;

    .line 416
    invoke-static {p2, p3, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_28

    .line 421
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    const/16 v3, 0xbe

    if-ne v0, v3, :cond_22

    .line 422
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isCurrentAccessToken(Lcom/facebook/AccessToken;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 423
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 425
    :cond_22
    new-instance v0, Lcom/facebook/GraphResponse;

    invoke-direct {v0, p0, p1, v2}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 443
    :goto_27
    return-object v0

    .line 428
    :cond_28
    const-string/jumbo v0, "body"

    const-string/jumbo v2, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p2, v0, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_43

    .line 434
    new-instance v1, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_27

    .line 435
    :cond_43
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_54

    .line 436
    new-instance v1, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lorg/json/JSONArray;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    move-object v0, v1

    goto :goto_27

    .line 439
    :cond_54
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 442
    :cond_56
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v0, :cond_68

    .line 443
    new-instance v2, Lcom/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v2

    goto :goto_27

    .line 445
    :cond_68
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got unexpected object type in response, class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    const/4 v0, 0x1

    if-ne v3, v0, :cond_69

    .line 340
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 346
    :try_start_13
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 347
    const-string/jumbo v1, "body"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    if-eqz p0, :cond_48

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 349
    :goto_24
    const-string/jumbo v6, "code"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 352
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_32} :catch_4b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_32} :catch_5b

    .line 371
    :goto_32
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_3f

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, v3, :cond_6b

    .line 372
    :cond_3f
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected number of results"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 373
    throw v0

    .line 348
    :cond_48
    const/16 v1, 0xc8

    goto :goto_24

    .line 356
    :catch_4b
    move-exception v1

    .line 357
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    .line 368
    goto :goto_32

    .line 362
    :catch_5b
    move-exception v1

    .line 363
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    move-object v1, p2

    goto :goto_32

    .line 376
    :cond_6b
    check-cast v1, Lorg/json/JSONArray;

    .line 378
    :goto_6d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_a6

    .line 379
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 381
    :try_start_79
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 383
    invoke-static {v0, p0, v3, p2}, Lcom/facebook/GraphResponse;->createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;

    move-result-object v3

    .line 382
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_84} :catch_88
    .catch Lcom/facebook/FacebookException; {:try_start_79 .. :try_end_84} :catch_97

    .line 378
    :goto_84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6d

    .line 388
    :catch_88
    move-exception v3

    .line 389
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 394
    :catch_97
    move-exception v3

    .line 395
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 403
    :cond_a6
    return-object v4
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v2, "Response"

    const-string/jumbo v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 300
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-static {v0, p1, p2}, Lcom/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 315
    invoke-static {p1, p2, v0}, Lcom/facebook/GraphResponse;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v2, "Response"

    const-string/jumbo v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 323
    invoke-virtual {p2}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 319
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 253
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_15

    .line 254
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 259
    :goto_d
    invoke-static {v1, p0, p1}, Lcom/facebook/GraphResponse;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    :try_end_10
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_10} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_10} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_53
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_10} :catch_72
    .catchall {:try_start_1 .. :try_end_10} :catchall_91

    move-result-object v0

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_14
    return-object v0

    .line 256
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_18
    .catch Lcom/facebook/FacebookException; {:try_start_15 .. :try_end_18} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_18} :catch_34
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_53
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_18} :catch_72
    .catchall {:try_start_15 .. :try_end_18} :catchall_91

    move-result-object v1

    goto :goto_d

    .line 260
    :catch_1a
    move-exception v0

    .line 261
    :try_start_1b
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {p1, p0, v0}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_91

    move-result-object v0

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    .line 267
    :catch_34
    move-exception v0

    .line 268
    :try_start_35
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_91

    move-result-object v0

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    .line 274
    :catch_53
    move-exception v0

    .line 275
    :try_start_54
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_91

    move-result-object v0

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    .line 281
    :catch_72
    move-exception v0

    .line 282
    :try_start_73
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_91

    move-result-object v0

    .line 289
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    :catchall_91
    move-exception v0

    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getJSONArray()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getJSONObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/facebook/GraphRequest;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/GraphResponse$PagingDirection;)Lcom/facebook/GraphRequest;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 188
    .line 189
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_4c

    .line 190
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "paging"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_4c

    .line 192
    sget-object v2, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    if-ne p1, v2, :cond_22

    .line 193
    const-string/jumbo v2, "next"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_1b
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 216
    :cond_21
    :goto_21
    return-object v1

    .line 195
    :cond_22
    const-string/jumbo v2, "previous"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 203
    :cond_2a
    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 211
    :cond_38
    :try_start_38
    new-instance v2, Lcom/facebook/GraphRequest;

    iget-object v3, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_38 .. :try_end_48} :catch_4a

    move-object v1, v2

    .line 216
    goto :goto_21

    .line 212
    :catch_4a
    move-exception v0

    goto :goto_21

    :cond_4c
    move-object v0, v1

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 226
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 229
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 226
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_5d

    move-result-object v0

    .line 234
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{Response: "

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " responseCode: "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphObject: "

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error: "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :cond_5a
    const/16 v0, 0xc8

    goto :goto_13

    .line 230
    :catch_5d
    move-exception v0

    .line 231
    const-string/jumbo v0, "unknown"

    goto :goto_1d
.end method
