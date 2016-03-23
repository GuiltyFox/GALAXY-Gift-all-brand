.class final Lcom/bzbs/lib/survey/http/CacheLibs$3;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirPutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/CacheLibs;->putObject(Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/CacheLibs$3;->val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$3;->val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$3;->val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;->onFailure(Ljava/lang/Exception;)V

    .line 107
    :cond_9
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$3;->val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$3;->val$onListenerPut:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;->onSuccess()V

    .line 100
    :cond_9
    return-void
.end method
