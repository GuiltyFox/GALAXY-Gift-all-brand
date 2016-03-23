.class final Lcom/bzbs/lib/survey/http/CacheLibs$2;
.super Ljava/lang/Object;
.source "CacheLibs.java"

# interfaces
.implements Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/CacheLibs;->deleteObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/CacheLibs$2;->val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$2;->val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$2;->val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    invoke-interface {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;->onFailure(Ljava/lang/Exception;)V

    .line 89
    :cond_9
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$2;->val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/CacheLibs$2;->val$onListenerDelete:Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;->onSuccess()V

    .line 82
    :cond_9
    return-void
.end method
