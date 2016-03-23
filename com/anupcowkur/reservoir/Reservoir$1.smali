.class final Lcom/anupcowkur/reservoir/Reservoir$1;
.super Ljava/lang/Object;
.source "Reservoir.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupcowkur/reservoir/Reservoir;->putAsync(Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 141
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->val$object:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/anupcowkur/reservoir/Reservoir;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 151
    :goto_12
    return-void

    .line 148
    :catch_13
    move-exception v0

    .line 149
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
