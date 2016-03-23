.class final Lcom/anupcowkur/reservoir/Reservoir$3;
.super Ljava/lang/Object;
.source "Reservoir.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupcowkur/reservoir/Reservoir;->getAsync(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$typeOfT:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .registers 3

    .prologue
    .line 250
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$3;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$3;->val$typeOfT:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v4, p0, Lcom/anupcowkur/reservoir/Reservoir$3;->val$key:Ljava/lang/String;

    iget-object v5, p0, Lcom/anupcowkur/reservoir/Reservoir$3;->val$typeOfT:Ljava/lang/reflect/Type;

    invoke-static {v4, v5}, Lcom/anupcowkur/reservoir/Reservoir;->get(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 255
    .local v0, "collectionOfT":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 256
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_e

    .line 259
    .end local v0    # "collectionOfT":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :catch_1c
    move-exception v1

    .line 260
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 262
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_20
    return-void

    .line 258
    .restart local v0    # "collectionOfT":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_1c

    goto :goto_20
.end method
