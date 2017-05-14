.class final Lcom/anupcowkur/reservoir/Reservoir$1;
.super Ljava/lang/Object;
.source "Reservoir.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupcowkur/reservoir/Reservoir;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 141
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$1;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 4
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
    :try_start_0
    iget-object v0, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anupcowkur/reservoir/Reservoir$1;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lrx/Subscriber;->m_()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 151
    :goto_12
    return-void

    .line 148
    :catch_13
    move-exception v0

    .line 149
    invoke-virtual {p1, v0}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
