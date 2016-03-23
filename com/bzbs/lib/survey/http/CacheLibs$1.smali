.class final Lcom/bzbs/lib/survey/http/CacheLibs$1;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirClearCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/CacheLibs;->clearAsynchronous(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/CacheLibs$1;->val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$1;->val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$1;->val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;->onFailure(Ljava/lang/Exception;)V

    .line 68
    :cond_9
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$1;->val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$1;->val$onListenerClear:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;->onSuccess()V

    .line 62
    :cond_9
    return-void
.end method
