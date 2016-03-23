.class Lcom/anupcowkur/reservoir/Reservoir$GetTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/Reservoir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

.field private final classOfT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private final key:Ljava/lang/String;

.field private final typeOfT:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/anupcowkur/reservoir/ReservoirGetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/anupcowkur/reservoir/ReservoirGetCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->key:Ljava/lang/String;

    .line 420
    iput-object p3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    .line 421
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->classOfT:Ljava/lang/Class;

    .line 422
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->typeOfT:Ljava/lang/reflect/Type;

    .line 423
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/anupcowkur/reservoir/ReservoirGetCallback;
    .param p4, "x3"    # Lcom/anupcowkur/reservoir/Reservoir$1;

    .prologue
    .line 410
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "callback"    # Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    .prologue
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    const/4 v0, 0x0

    .line 426
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->key:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    .line 429
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->classOfT:Ljava/lang/Class;

    .line 430
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->typeOfT:Ljava/lang/reflect/Type;

    .line 431
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/anupcowkur/reservoir/ReservoirGetCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/reflect/Type;
    .param p3, "x2"    # Lcom/anupcowkur/reservoir/ReservoirGetCallback;
    .param p4, "x3"    # Lcom/anupcowkur/reservoir/Reservoir$1;

    .prologue
    .line 410
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 410
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    :try_start_0
    # getter for: Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->access$600()Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->getString(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->getString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "json":Ljava/lang/String;
    # getter for: Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->access$500()Lcom/google/gson/Gson;

    move-result-object v4

    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->classOfT:Ljava/lang/Class;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->classOfT:Ljava/lang/Class;

    :goto_18
    invoke-virtual {v4, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 439
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_28

    .line 440
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    .line 443
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :catch_24
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    .line 445
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    return-object v2

    .line 438
    .restart local v1    # "json":Ljava/lang/String;
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->typeOfT:Ljava/lang/reflect/Type;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2b} :catch_24

    goto :goto_18
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/anupcowkur/reservoir/Reservoir$GetTask;, "Lcom/anupcowkur/reservoir/Reservoir$GetTask<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    if-eqz v0, :cond_d

    .line 452
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 453
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    invoke-interface {v0, p1}, Lcom/anupcowkur/reservoir/ReservoirGetCallback;->onSuccess(Ljava/lang/Object;)V

    .line 458
    :cond_d
    :goto_d
    return-void

    .line 455
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->callback:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirGetCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_d
.end method
