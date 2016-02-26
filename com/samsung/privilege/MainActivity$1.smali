.class Lcom/samsung/privilege/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$1;->this$0:Lcom/samsung/privilege/MainActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$1;->this$0:Lcom/samsung/privilege/MainActivity;

    # invokes: Lcom/samsung/privilege/MainActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/privilege/MainActivity;->access$0(Lcom/samsung/privilege/MainActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 90
    return-void
.end method
