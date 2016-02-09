.class public Lcom/facebook/android/BuzzebeesEvents;
.super Ljava/lang/Object;
.source "BuzzebeesEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;,
        Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    }
.end annotation


# static fields
.field private static mBuzzebeesAuthListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;",
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

    sput-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesAuthListeners:Ljava/util/LinkedList;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthListener(Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public static addConnectedDeleteAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static addConnectedGetAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public static addConnectedPostAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public static onBzBsAuthFail(Ljava/lang/String;)V
    .registers 4
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 54
    return-void

    .line 51
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;

    .line 52
    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;
    invoke-interface {v0, p0}, Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;->onBzBsAuthFail(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static onBzBsAuthSuccess()V
    .registers 3

    .prologue
    .line 45
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 48
    return-void

    .line 45
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;
    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;

    .line 46
    .restart local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;
    invoke-interface {v0}, Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;->onBzBsAuthSucceed()V

    goto :goto_6
.end method

.method public static onBzBsConnectedDeleteAPIFail(Ljava/lang/String;)V
    .registers 4
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 90
    return-void

    .line 87
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 88
    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0, p0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPIFail(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static onBzBsConnectedDeleteAPISuccess()V
    .registers 3

    .prologue
    .line 81
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 84
    return-void

    .line 81
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 82
    .restart local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPISucceed()V

    goto :goto_6
.end method

.method public static onBzBsConnectedGetAPIFail(Ljava/lang/String;)V
    .registers 4
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 66
    return-void

    .line 63
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 64
    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0, p0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPIFail(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static onBzBsConnectedGetAPISuccess()V
    .registers 3

    .prologue
    .line 57
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 60
    return-void

    .line 57
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 58
    .restart local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPISucceed()V

    goto :goto_6
.end method

.method public static onBzBsConnectedPostAPIFail(Ljava/lang/String;)V
    .registers 4
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 78
    return-void

    .line 75
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 76
    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0, p0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPIFail(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static onBzBsConnectedPostAPISuccess()V
    .registers 3

    .prologue
    .line 69
    sget-object v1, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 72
    return-void

    .line 69
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    check-cast v0, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .line 70
    .restart local v0    # "listener":Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;
    invoke-interface {v0}, Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;->onBzBsConnectedAPISucceed()V

    goto :goto_6
.end method

.method public static removeAuthListener(Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsAuthListener;

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public static removeConnectedDeleteAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedDeleteAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public static removeConnectedGetAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedGetAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static removeConnectedPostAPIListener(Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/BuzzebeesEvents$BzBsConnectedAPIListener;

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/android/BuzzebeesEvents;->mBuzzebeesConnectedPostAPIListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
