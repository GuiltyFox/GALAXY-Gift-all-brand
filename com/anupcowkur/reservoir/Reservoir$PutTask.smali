.class Lcom/anupcowkur/reservoir/Reservoir$PutTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/Reservoir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PutTask"
.end annotation

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
.field private final callback:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

.field private e:Ljava/lang/Exception;

.field private final key:Ljava/lang/String;

.field final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    .prologue
    .line 375
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->key:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->callback:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    .line 378
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->object:Ljava/lang/Object;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->e:Ljava/lang/Exception;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/anupcowkur/reservoir/ReservoirPutCallback;
    .param p4, "x3"    # Lcom/anupcowkur/reservoir/Reservoir$1;

    .prologue
    .line 368
    invoke-direct {p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 386
    :try_start_0
    # getter for: Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->access$500()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->object:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "json":Ljava/lang/String;
    # getter for: Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->access$600()Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v2

    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 391
    .end local v1    # "json":Ljava/lang/String;
    :goto_13
    const/4 v2, 0x0

    return-object v2

    .line 388
    :catch_15
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->e:Ljava/lang/Exception;

    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->callback:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    if-eqz v0, :cond_d

    .line 397
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 398
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->callback:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    invoke-interface {v0}, Lcom/anupcowkur/reservoir/ReservoirPutCallback;->onSuccess()V

    .line 403
    :cond_d
    :goto_d
    return-void

    .line 400
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->callback:Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirPutCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_d
.end method
