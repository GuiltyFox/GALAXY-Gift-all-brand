.class Lcom/samsung/privilege/activity/QRLandingActivity$1;
.super Ljava/lang/Object;
.source "QRLandingActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/QRLandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/QRLandingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    .line 110
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
    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;

    # invokes: Lcom/samsung/privilege/activity/QRLandingActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$0(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 114
    return-void
.end method
