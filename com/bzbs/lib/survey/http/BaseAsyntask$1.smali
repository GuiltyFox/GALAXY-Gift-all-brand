.class Lcom/bzbs/lib/survey/http/BaseAsyntask$1;
.super Ljava/lang/Object;
.source "BaseAsyntask.java"

# interfaces
.implements Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/http/BaseAsyntask;->saveCache(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/http/BaseAsyntask;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/http/BaseAsyntask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/http/BaseAsyntask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bzbs/lib/survey/http/BaseAsyntask$1;->this$0:Lcom/bzbs/lib/survey/http/BaseAsyntask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 42
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method
