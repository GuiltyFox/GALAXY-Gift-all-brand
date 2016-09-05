.class Lcom/anupcowkur/reservoir/Reservoir$GetTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
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
.field private final a:Ljava/lang/String;

.field private final b:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Type;

.field private e:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
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
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->a:Ljava/lang/String;

    .line 420
    iput-object p3, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->b:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    .line 421
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->c:Ljava/lang/Class;

    .line 422
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->d:Ljava/lang/reflect/Type;

    .line 423
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 5

    .prologue
    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->b()Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v0

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->a()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->c:Ljava/lang/Class;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->c:Ljava/lang/Class;

    :goto_18
    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    if-nez v0, :cond_28

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    .line 443
    :catch_24
    move-exception v0

    .line 444
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    .line 445
    const/4 v0, 0x0

    :cond_28
    return-object v0

    .line 438
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->d:Ljava/lang/reflect/Type;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2b} :catch_24

    goto :goto_18
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 410
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->b:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    if-eqz v0, :cond_d

    .line 452
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 453
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->b:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    invoke-interface {v0, p1}, Lcom/anupcowkur/reservoir/ReservoirGetCallback;->a(Ljava/lang/Object;)V

    .line 458
    :cond_d
    :goto_d
    return-void

    .line 455
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->b:Lcom/anupcowkur/reservoir/ReservoirGetCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirGetCallback;->a(Ljava/lang/Exception;)V

    goto :goto_d
.end method
