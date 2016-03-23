.class final Lcom/anupcowkur/reservoir/Reservoir$2;
.super Ljava/lang/Object;
.source "Reservoir.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupcowkur/reservoir/Reservoir;->getAsync(Ljava/lang/String;Ljava/lang/Class;)Lrx/Observable;
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
.field final synthetic val$classOfT:Ljava/lang/Class;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 225
    iput-object p1, p0, Lcom/anupcowkur/reservoir/Reservoir$2;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/anupcowkur/reservoir/Reservoir$2;->val$classOfT:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/anupcowkur/reservoir/Reservoir$2;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/anupcowkur/reservoir/Reservoir$2;->val$classOfT:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/anupcowkur/reservoir/Reservoir;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 235
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_e
    return-void

    .line 232
    :catch_f
    move-exception v0

    .line 233
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_e
.end method
