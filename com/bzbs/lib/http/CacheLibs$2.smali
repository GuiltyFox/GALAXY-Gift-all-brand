.class final Lcom/bzbs/lib/http/CacheLibs$2;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirGetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V
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
.field final synthetic a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bzbs/lib/http/CacheLibs$2;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$2;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$2;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;->a(Ljava/lang/Exception;)V

    .line 98
    :cond_9
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/http/CacheLibs$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$2;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/bzbs/lib/http/CacheLibs$2;->a:Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;->a(Ljava/lang/String;)V

    .line 91
    :cond_9
    return-void
.end method
