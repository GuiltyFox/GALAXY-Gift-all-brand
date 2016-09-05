.class Lcom/tbruyelle/rxpermissions/RxPermissions$1;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Lrx/Observable",
        "<",
        "Lcom/tbruyelle/rxpermissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/tbruyelle/rxpermissions/RxPermissions;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->b:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->b:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->a(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
