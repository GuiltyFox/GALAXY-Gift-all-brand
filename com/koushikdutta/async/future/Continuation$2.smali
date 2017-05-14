.class Lcom/koushikdutta/async/future/Continuation$2;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->g()Lcom/koushikdutta/async/callback/CompletedCallback;
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Z

.field final synthetic c:Lcom/koushikdutta/async/future/Continuation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/koushikdutta/async/future/Continuation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/future/Continuation$2;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->c:Lcom/koushikdutta/async/future/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->a:Z

    if-eqz v0, :cond_5

    .line 66
    :goto_4
    return-void

    .line 58
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->a:Z

    .line 59
    sget-boolean v0, Lcom/koushikdutta/async/future/Continuation$2;->b:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->c:Lcom/koushikdutta/async/future/Continuation;

    invoke-static {v0}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/future/Continuation;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_1a
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->c:Lcom/koushikdutta/async/future/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/future/Continuation;Z)Z

    .line 61
    if-nez p1, :cond_28

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->c:Lcom/koushikdutta/async/future/Continuation;

    invoke-static {v0}, Lcom/koushikdutta/async/future/Continuation;->b(Lcom/koushikdutta/async/future/Continuation;)V

    goto :goto_4

    .line 65
    :cond_28
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->c:Lcom/koushikdutta/async/future/Continuation;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/Continuation;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method
