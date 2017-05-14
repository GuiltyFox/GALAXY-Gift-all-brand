.class public Lcom/bzbs/event/LoginEvents;
.super Ljava/lang/Object;
.source "LoginEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/event/LoginEvents$LoginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(Lcom/bzbs/event/LoginEvents$LoginListener;)V
    .registers 2

    .prologue
    .line 10
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 25
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 27
    :cond_16
    return-void
.end method

.method public static b(Lcom/bzbs/event/LoginEvents$LoginListener;)V
    .registers 2

    .prologue
    .line 14
    if-eqz p0, :cond_7

    .line 15
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_7
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 31
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 33
    :cond_16
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 37
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 39
    :cond_16
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 43
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 45
    :cond_16
    return-void
.end method
