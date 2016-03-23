.class final Lcom/bzbs/lib/survey/http/CacheLibs$4;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirGetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/CacheLibs;->getObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anupcowkur/reservoir/ReservoirGetCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/CacheLibs$4;->val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$4;->val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$4;->val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;->onFailure(Ljava/lang/Exception;)V

    .line 125
    :cond_9
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$4;->val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$4;->val$onListenerGet:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;->onSuccess(Ljava/lang/String;)V

    .line 118
    :cond_9
    return-void
.end method
