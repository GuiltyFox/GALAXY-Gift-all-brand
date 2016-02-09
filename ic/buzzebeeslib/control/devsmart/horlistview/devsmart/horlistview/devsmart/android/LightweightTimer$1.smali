.class Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;
.super Ljava/lang/Object;
.source "LightweightTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 45
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mRunning:Z
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->start()V

    .line 51
    :cond_1e
    return-void
.end method
