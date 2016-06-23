.class public Lcom/bzbs/event/LoginEvents;
.super Ljava/lang/Object;
.source "LoginEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/event/LoginEvents$LoginListener;
    }
.end annotation


# static fields
.field private static mLoginListeners:Ljava/util/LinkedList;
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

    sput-object v0, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/event/LoginEvents$LoginListener;

    .prologue
    .line 10
    sget-object v0, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public static clearLoginListener()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 19
    return-void
.end method

.method public static onAuthenOTPSuccess(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 35
    .local v0, "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->onAuthenOTPSuccess(Ljava/lang/String;)V

    goto :goto_6

    .line 37
    .end local v0    # "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    :cond_16
    return-void
.end method

.method public static onLoginDeviceSuccess(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v1, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 29
    .local v0, "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->onLoginDeviceSuccess(Ljava/lang/String;)V

    goto :goto_6

    .line 31
    .end local v0    # "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    :cond_16
    return-void
.end method

.method public static onLoginFacebookSuccess(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v1, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 23
    .local v0, "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->onLoginFacebookSuccess(Ljava/lang/String;)V

    goto :goto_6

    .line 25
    .end local v0    # "listener":Lcom/bzbs/event/LoginEvents$LoginListener;
    :cond_16
    return-void
.end method

.method public static removeLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/event/LoginEvents$LoginListener;

    .prologue
    .line 14
    sget-object v0, Lcom/bzbs/event/LoginEvents;->mLoginListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
