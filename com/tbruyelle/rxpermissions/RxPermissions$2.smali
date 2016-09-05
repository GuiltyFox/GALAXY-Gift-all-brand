.class Lcom/tbruyelle/rxpermissions/RxPermissions$2;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->b(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/tbruyelle/rxpermissions/Permission;",
        ">;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tbruyelle/rxpermissions/RxPermissions;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->a:Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    invoke-static {}, Lrx/Observable;->a()Lrx/Observable;

    move-result-object v0

    .line 156
    :goto_a
    return-object v0

    .line 151
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions/Permission;

    .line 152
    iget-boolean v0, v0, Lcom/tbruyelle/rxpermissions/Permission;->b:Z

    if-nez v0, :cond_f

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_a

    .line 156
    :cond_29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_a
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 141
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->a(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
