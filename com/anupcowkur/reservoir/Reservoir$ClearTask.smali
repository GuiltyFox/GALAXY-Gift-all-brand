.class Lcom/anupcowkur/reservoir/Reservoir$ClearTask;
.super Landroid/os/AsyncTask;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/Reservoir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearTask"
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
.field private final callback:Lcom/anupcowkur/reservoir/ReservoirClearCallback;

.field private e:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Lcom/anupcowkur/reservoir/ReservoirClearCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/anupcowkur/reservoir/ReservoirClearCallback;

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->callback:Lcom/anupcowkur/reservoir/ReservoirClearCallback;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->e:Ljava/lang/Exception;

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Lcom/anupcowkur/reservoir/ReservoirClearCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/anupcowkur/reservoir/ReservoirClearCallback;
    .param p2, "x1"    # Lcom/anupcowkur/reservoir/Reservoir$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;-><init>(Lcom/anupcowkur/reservoir/ReservoirClearCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 503
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 516
    :try_start_0
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 520
    :goto_3
    const/4 v1, 0x0

    return-object v1

    .line 517
    :catch_5
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->e:Ljava/lang/Exception;

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 503
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->callback:Lcom/anupcowkur/reservoir/ReservoirClearCallback;

    if-eqz v0, :cond_d

    .line 526
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    .line 527
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->callback:Lcom/anupcowkur/reservoir/ReservoirClearCallback;

    invoke-interface {v0}, Lcom/anupcowkur/reservoir/ReservoirClearCallback;->onSuccess()V

    .line 532
    :cond_d
    :goto_d
    return-void

    .line 529
    :cond_e
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->callback:Lcom/anupcowkur/reservoir/ReservoirClearCallback;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anupcowkur/reservoir/ReservoirClearCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_d
.end method
