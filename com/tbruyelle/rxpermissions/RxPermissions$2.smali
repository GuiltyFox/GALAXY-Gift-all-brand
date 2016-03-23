.class Lcom/tbruyelle/rxpermissions/RxPermissions$2;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tbruyelle/rxpermissions/RxPermissions;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 141
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->call(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/util/List;)Lrx/Observable;
    .registers 5
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
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/tbruyelle/rxpermissions/Permission;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    .line 156
    :goto_a
    return-object v1

    .line 151
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions/Permission;

    .line 152
    .local v0, "p":Lcom/tbruyelle/rxpermissions/Permission;
    iget-boolean v2, v0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    if-nez v2, :cond_f

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_a

    .line 156
    .end local v0    # "p":Lcom/tbruyelle/rxpermissions/Permission;
    :cond_29
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_a
.end method
