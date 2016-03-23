.class Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/Reservoir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
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
.field private final callback:Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

.field private e:Ljava/lang/Exception;

.field private final key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->key:Ljava/lang/String;

    .line 473
    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->callback:Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->e:Ljava/lang/Exception;

    .line 475
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;
    .param p3, "x2"    # Lcom/anupcowkur/reservoir/Reservoir$1;

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;-><init>(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 480
    :try_start_0
    # getter for: Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->access$600()Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->delete(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 484
    :goto_9
    const/4 v1, 0x0

    return-object v1

    .line 481
    :catch_b
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->e:Ljava/lang/Exception;

    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->callback:Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    if-eqz v0, :cond_d

    .line 490
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 491
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->callback:Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    invoke-interface {v0}, Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;->onSuccess()V

    .line 496
    :cond_d
    :goto_d
    return-void

    .line 493
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->callback:Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_d
.end method
