.class Lcom/bzbs/lib/survey/http/HttpAsynctask$1;
.super Ljava/lang/Object;
.source "HttpAsynctask.java"

# interfaces
.implements Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/HttpAsynctask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/HttpAsynctask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/http/HttpAsynctask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$1;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 75
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bzbs/lib/survey/http/HttpAsynctask$1;->this$0:Lcom/bzbs/lib/survey/http/HttpAsynctask;

    # invokes: Lcom/bzbs/lib/survey/http/HttpAsynctask;->loadCache(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/bzbs/lib/survey/http/HttpAsynctask;->access$000(Lcom/bzbs/lib/survey/http/HttpAsynctask;Ljava/lang/String;)V

    .line 70
    return-void
.end method
