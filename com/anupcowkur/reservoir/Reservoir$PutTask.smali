.class Lcom/anupcowkur/reservoir/Reservoir$PutTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Exception;

.field private final d:Lcom/anupcowkur/reservoir/ReservoirPutCallback;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V
    .registers 5

    .prologue
    .line 375
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->b:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->d:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    .line 378
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->a:Ljava/lang/Object;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->c:Ljava/lang/Exception;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 5

    .prologue
    .line 368
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->b()Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 391
    :goto_13
    const/4 v0, 0x0

    return-object v0

    .line 388
    :catch_15
    move-exception v0

    .line 389
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->c:Ljava/lang/Exception;

    goto :goto_13
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->d:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    if-eqz v0, :cond_d

    .line 397
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->c:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 398
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->d:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    invoke-interface {v0}, Lcom/anupcowkur/reservoir/ReservoirPutCallback;->a()V

    .line 403
    :cond_d
    :goto_d
    return-void

    .line 400
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->d:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirPutCallback;->a(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 368
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->a(Ljava/lang/Void;)V

    return-void
.end method
