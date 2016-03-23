.class Lcom/tbruyelle/rxpermissions/RxPermissions$1;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->requestEach(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;
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
        "Ljava/lang/Object;",
        "Lrx/Observable",
        "<",
        "Lcom/tbruyelle/rxpermissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tbruyelle/rxpermissions/RxPermissions;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->val$permissions:[Ljava/lang/String;

    # invokes: Lcom/tbruyelle/rxpermissions/RxPermissions;->request_([Ljava/lang/String;)Lrx/Observable;
    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->access$000(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
