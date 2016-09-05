.class final Lcom/bzbs/lib/http/CacheLibs$1;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirPutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bzbs/lib/http/CacheLibs$1;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$1;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$1;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;

    invoke-interface {v0}, Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;->a()V

    .line 52
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$1;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$1;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;->a(Ljava/lang/Exception;)V

    .line 59
    :cond_9
    return-void
.end method
