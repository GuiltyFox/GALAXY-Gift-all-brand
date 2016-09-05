.class public Lcom/squareup/picasso/Picasso$Builder;
.super Ljava/lang/Object;
.source "Picasso.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Downloader;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/picasso/Cache;

.field private e:Lcom/squareup/picasso/Picasso$Listener;

.field private f:Lcom/squareup/picasso/Picasso$RequestTransformer;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-nez p1, :cond_e

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->a:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/picasso/Picasso;
    .registers 20

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/Picasso$Builder;->a:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Downloader;

    if-nez v1, :cond_12

    .line 832
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Downloader;

    .line 834
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    if-nez v1, :cond_21

    .line 835
    new-instance v1, Lcom/squareup/picasso/LruCache;

    invoke-direct {v1, v2}, Lcom/squareup/picasso/LruCache;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    .line 837
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_30

    .line 838
    new-instance v1, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-direct {v1}, Lcom/squareup/picasso/PicassoExecutorService;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->f:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-nez v1, :cond_3c

    .line 841
    sget-object v1, Lcom/squareup/picasso/Picasso$RequestTransformer;->a:Lcom/squareup/picasso/Picasso$RequestTransformer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->f:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 844
    :cond_3c
    new-instance v7, Lcom/squareup/picasso/Stats;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    invoke-direct {v7, v1}, Lcom/squareup/picasso/Stats;-><init>(Lcom/squareup/picasso/Cache;)V

    .line 846
    new-instance v1, Lcom/squareup/picasso/Dispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$Builder;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/Picasso$Builder;->b:Lcom/squareup/picasso/Downloader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V

    .line 848
    new-instance v8, Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/picasso/Picasso$Builder;->d:Lcom/squareup/picasso/Cache;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/picasso/Picasso$Builder;->e:Lcom/squareup/picasso/Picasso$Listener;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/Picasso$Builder;->f:Lcom/squareup/picasso/Picasso$RequestTransformer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/picasso/Picasso$Builder;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/picasso/Picasso$Builder;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$Builder;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$Builder;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Ljava/util/List;Lcom/squareup/picasso/Stats;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8
.end method
