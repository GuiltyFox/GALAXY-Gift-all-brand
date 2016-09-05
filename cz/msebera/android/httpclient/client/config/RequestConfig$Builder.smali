.class public Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# instance fields
.field private a:Z

.field private b:Lcz/msebera/android/httpclient/HttpHost;

.field private c:Ljava/net/InetAddress;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->d:Z

    .line 337
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->f:Z

    .line 338
    const/16 v0, 0x32

    iput v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->i:I

    .line 339
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->g:Z

    .line 340
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->j:Z

    .line 341
    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->m:I

    .line 342
    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->n:I

    .line 343
    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->o:I

    .line 344
    return-void
.end method


# virtual methods
.method public a(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 387
    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->i:I

    .line 388
    return-object p0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->b:Lcz/msebera/android/httpclient/HttpHost;

    .line 353
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 367
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->e:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public a(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->c:Ljava/net/InetAddress;

    .line 358
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 397
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->k:Ljava/util/Collection;

    .line 398
    return-object p0
.end method

.method public a(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 347
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a:Z

    .line 348
    return-object p0
.end method

.method public a()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 18

    .prologue
    .line 422
    new-instance v1, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->b:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->c:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->d:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->f:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->g:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->h:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->i:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->j:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->k:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->l:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget v14, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->m:I

    move-object/from16 v0, p0

    iget v15, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->n:I

    move-object/from16 v0, p0

    iget v0, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->o:I

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcz/msebera/android/httpclient/client/config/RequestConfig;-><init>(ZLcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;III)V

    return-object v1
.end method

.method public b(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 407
    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->m:I

    .line 408
    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 402
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->l:Ljava/util/Collection;

    .line 403
    return-object p0
.end method

.method public b(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 362
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->d:Z

    .line 363
    return-object p0
.end method

.method public c(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 412
    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->n:I

    .line 413
    return-object p0
.end method

.method public c(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 372
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->f:Z

    .line 373
    return-object p0
.end method

.method public d(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 417
    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->o:I

    .line 418
    return-object p0
.end method

.method public d(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 377
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->g:Z

    .line 378
    return-object p0
.end method

.method public e(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 382
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->h:Z

    .line 383
    return-object p0
.end method

.method public f(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 2

    .prologue
    .line 392
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->j:Z

    .line 393
    return-object p0
.end method
